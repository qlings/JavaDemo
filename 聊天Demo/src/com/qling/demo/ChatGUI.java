package com.qling.demo;

import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Color;
import java.awt.Font;
import java.awt.Frame;
import java.awt.Panel;
import java.awt.TextArea;
import java.awt.TextField;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ChatGUI extends Frame {

	private Button send;
	private Button clear;
	private Button log;
	private Button shake;
	private TextField ipText;
	private TextArea reText;
	private TextArea sendText;
	private DatagramSocket socket;
	private BufferedWriter logbw;

	public static void main(String[] args) throws IOException {
		new ChatGUI();
	}

	// �޲ι���
	public ChatGUI() throws IOException {
		southPanel();
		centerPanel();
		ChatSize();
		ChatInit();
		event();
	}

	// �������
	public void ChatSize() {
		this.setLocation(500, 50);
		this.setSize(500, 600);
		this.setTitle("����Demo");
		this.setIconImage(Toolkit.getDefaultToolkit().createImage("Message.png"));
		this.setVisible(true);
	}

	// �����,���ø��ఴť
	public void southPanel() {
		Panel sPanel = new Panel();
		send = new Button("�� ��");
		clear = new Button("�� ��");
		log = new Button("�� ¼");
		shake = new Button("�� ��");
		ipText = new TextField(15);
		ipText.setText("127.0.0.1");
		sPanel.add(ipText);
		sPanel.add(send);
		sPanel.add(clear);
		sPanel.add(log);
		sPanel.add(shake);
		this.add(sPanel, BorderLayout.SOUTH);
	}

	// �����,�����
	public void centerPanel() {
		Panel cPanel = new Panel();
		reText = new TextArea();
		reText.setEditable(false);
		reText.setBackground(new Color(204, 255, 204));
		reText.setFont(new Font("����", Font.PLAIN, 15));
		sendText = new TextArea(5, 1);
		sendText.setFont(new Font("����", Font.PLAIN, 15));
		cPanel.setLayout(new BorderLayout());
		cPanel.add(reText, BorderLayout.CENTER); // ���в�����Ϊ�߽粼�ֹ�����
		cPanel.add(sendText, BorderLayout.SOUTH);
		this.add(cPanel, BorderLayout.CENTER);
	}

	// ��ʼ��
	public void ChatInit() throws IOException {
		socket = new DatagramSocket(); // �����˿�
		new Receive().start(); // �������ܽ���
		logbw = new BufferedWriter(new FileWriter("config.txt", true)); // ���������¼�ļ�
	}

	// �¼�
	public void event() {
		// �ر��¼�����
		this.addWindowListener(new WindowAdapter() {
			@Override
			public void windowClosing(WindowEvent e) {
				try {
					socket.close();
					logbw.close();

				} catch (Exception e1) {
				} finally {
					System.exit(0);
				}
			}
		});
		// �����¼�����
		send.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					send();
				} catch (Exception e1) {
					e1.printStackTrace();
				}
			}
		});

		// �����¼�¼�
		log.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					logButton();
				} catch (IOException e1) {
					e1.printStackTrace();
				}
			}
		});

		// �����¼�
		clear.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				reText.setText("");
			}
		});

		// ���¼�
		shake.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					send(new byte[] { -1 }, ipText.getText());
				} catch (IOException e1) {
					e1.printStackTrace();
				}
			}
		});

		// ��ݼ�
		sendText.addKeyListener(new KeyAdapter() {
			@Override
			public void keyReleased(KeyEvent e) {
				if (e.getKeyCode() == KeyEvent.VK_ENTER && !e.isControlDown()) {
					try {
						send();
					} catch (Exception e1) {
						e1.printStackTrace();
					}
				} else if (e.getKeyCode() == KeyEvent.VK_ENTER && e.isControlDown()) {
					sendText.append("");
				}
			}
		});
	}

	// ���÷��Ͱ�ť�¼�
	public void send() throws Exception {
		String message = sendText.getText();
		String ipAdress = ipText.getText();
		String regex = "([1-9]|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])(\\.(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])){3}";
		if (!ipAdress.matches(regex)) {
			reText.append(ipAdress + " ip��ַ����ȷ,����\r\n");
		} else {
			send(message.getBytes(), ipAdress);
			String s = getCurrentTime() + " �Ҷ�" + ipAdress + "˵:\r\n" + message + "\r\n\r\n";
			reText.append(s);
			logbw.write(s);
			sendText.setText("");
		}
	}

	// ���÷����¼�
	public void send(byte[] arr, String ipAdress) throws IOException {
		DatagramPacket packet = new DatagramPacket(arr, arr.length, InetAddress.getByName(ipAdress), 9999);
		socket.send(packet);
	}

	// ���ü�¼�¼�
	private void logButton() throws IOException {
		logbw.flush();
		FileInputStream logbr = new FileInputStream("config.txt");
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		byte[] arr = new byte[8192];
		int len;
		while ((len = logbr.read(arr)) != -1) {
			baos.write(arr, 0, len);
		}
		String s = baos.toString();
		reText.setText(s);
		logbr.close();
	}

	// �������¼�
	public void shake() throws InterruptedException {
		int x = this.getLocation().x;
		int y = this.getLocation().y;
		for (int i = 0; i < 10; i++) {
			this.setLocation(x + 20, y + 20);
			Thread.sleep(10);
			this.setLocation(x - 20, y + 20);
			Thread.sleep(10);
			this.setLocation(x + 20, y - 20);
			Thread.sleep(10);
			this.setLocation(x - 20, y - 20);
			Thread.sleep(10);
			this.setLocation(x, y);
		}
	}

	// ��ȡ��ǰʱ��
	public String getCurrentTime() {
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY��MM��dd�� HH:mm:ss");
		return sdf.format(d);
	}

	// ���ս��̶���,��������ʱ����,������ر�ʱ�ر�
	class Receive extends Thread {
		@Override
		public void run() {
			try {
				DatagramSocket resocket = new DatagramSocket(9999);
				DatagramPacket repacket = new DatagramPacket(new byte[8192], 8192);
				while (true) {
					resocket.receive(repacket);
					byte[] arr = repacket.getData();
					int len = repacket.getLength();
					String ipAdress = repacket.getAddress().getHostAddress();
					String remessage = new String(arr, 0, len);
					Thread.sleep(20); // ��ֹ���ս��̿��ڷ���,�ӳ�20����ִ��
					if (arr[0] == -1 && len == 1) {
						shake();
						String s = getCurrentTime() + " " + ipAdress + "������һ����\r\n\r\n";
						reText.append(s);
						logbw.write(s);
					} else {
						String s = getCurrentTime() + " " + ipAdress + "����˵:\r\n" + remessage + "\r\n\r\n";
						reText.append(s);
						logbw.write(s);
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}