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

	// 无参构造
	public ChatGUI() throws IOException {
		southPanel();
		centerPanel();
		ChatSize();
		ChatInit();
		event();
	}

	// 窗体外观
	public void ChatSize() {
		this.setLocation(500, 50);
		this.setSize(500, 600);
		this.setTitle("聊天Demo");
		this.setIconImage(Toolkit.getDefaultToolkit().createImage("Message.png"));
		this.setVisible(true);
	}

	// 南面板,放置各类按钮
	public void southPanel() {
		Panel sPanel = new Panel();
		send = new Button("发 送");
		clear = new Button("清 屏");
		log = new Button("记 录");
		shake = new Button("振 动");
		ipText = new TextField(15);
		ipText.setText("127.0.0.1");
		sPanel.add(ipText);
		sPanel.add(send);
		sPanel.add(clear);
		sPanel.add(log);
		sPanel.add(shake);
		this.add(sPanel, BorderLayout.SOUTH);
	}

	// 中面板,聊天框
	public void centerPanel() {
		Panel cPanel = new Panel();
		reText = new TextArea();
		reText.setEditable(false);
		reText.setBackground(new Color(204, 255, 204));
		reText.setFont(new Font("宋体", Font.PLAIN, 15));
		sendText = new TextArea(5, 1);
		sendText.setFont(new Font("楷体", Font.PLAIN, 15));
		cPanel.setLayout(new BorderLayout());
		cPanel.add(reText, BorderLayout.CENTER); // 将中部面板改为边界布局管理器
		cPanel.add(sendText, BorderLayout.SOUTH);
		this.add(cPanel, BorderLayout.CENTER);
	}

	// 初始化
	public void ChatInit() throws IOException {
		socket = new DatagramSocket(); // 开启端口
		new Receive().start(); // 开启接受进程
		logbw = new BufferedWriter(new FileWriter("config.txt", true)); // 关联聊天记录文件
	}

	// 事件
	public void event() {
		// 关闭事件监听
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
		// 发送事件监听
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

		// 聊天记录事件
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

		// 清屏事件
		clear.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				reText.setText("");
			}
		});

		// 振动事件
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

		// 快捷键
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

	// 设置发送按钮事件
	public void send() throws Exception {
		String message = sendText.getText();
		String ipAdress = ipText.getText();
		String regex = "([1-9]|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])(\\.(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])){3}";
		if (!ipAdress.matches(regex)) {
			reText.append(ipAdress + " ip地址不正确,请检查\r\n");
		} else {
			send(message.getBytes(), ipAdress);
			String s = getCurrentTime() + " 我对" + ipAdress + "说:\r\n" + message + "\r\n\r\n";
			reText.append(s);
			logbw.write(s);
			sendText.setText("");
		}
	}

	// 设置发送事件
	public void send(byte[] arr, String ipAdress) throws IOException {
		DatagramPacket packet = new DatagramPacket(arr, arr.length, InetAddress.getByName(ipAdress), 9999);
		socket.send(packet);
	}

	// 设置记录事件
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

	// 设置振动事件
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

	// 获取当前时间
	public String getCurrentTime() {
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY年MM月dd日 HH:mm:ss");
		return sdf.format(d);
	}

	// 接收进程对象,创建窗体时开启,虚拟机关闭时关闭
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
					Thread.sleep(20); // 防止接收进程快于发送,延迟20毫秒执行
					if (arr[0] == -1 && len == 1) {
						shake();
						String s = getCurrentTime() + " " + ipAdress + "发送了一次振动\r\n\r\n";
						reText.append(s);
						logbw.write(s);
					} else {
						String s = getCurrentTime() + " " + ipAdress + "对我说:\r\n" + remessage + "\r\n\r\n";
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