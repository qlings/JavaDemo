unit mainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ToolWin, StdCtrls, ExtCtrls, DB, ADODB,Comobj,
  ImgList,JPEG, ExtDlgs,ShellAPI,Registry,Clipbrd,FileCtrl;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    F1: TMenuItem;
    PassMenu: TMenuItem;
    N1: TMenuItem;
    PrintMenu: TMenuItem;
    N2: TMenuItem;
    ExitMenu: TMenuItem;
    E1: TMenuItem;
    T1: TMenuItem;
    H1: TMenuItem;
    StatusBar1: TStatusBar;
    HelpMenu: TMenuItem;
    N3: TMenuItem;
    AboutMenu: TMenuItem;
    E2: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Panel1: TPanel;
    Splitter1: TSplitter;
    PageControl1: TPageControl;
    TreeTab: TTabSheet;
    BMarkTab: TTabSheet;
    SearchTab: TTabSheet;
    TreeView1: TTreeView;
    TreeView2: TTreeView;
    TreeView3: TTreeView;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    CompressDataMenu: TMenuItem;
    Panel5: TPanel;
    Panel6: TPanel;
    ScrollBox1: TScrollBox;
    Image1: TImage;
    Memo1: TMemo;
    Panel7: TPanel;
    Label3: TLabel;
    ADOConnection1: TADOConnection;
    PFolderMenu: TMenuItem;
    SFolderMenu: TMenuItem;
    N6: TMenuItem;
    AddPicMenu: TMenuItem;
    InFolderMenu: TMenuItem;
    N7: TMenuItem;
    DelMenu: TMenuItem;
    RenameMenu: TMenuItem;
    N5: TMenuItem;
    NoteMenu: TMenuItem;
    VFmenu: TMenuItem;
    BMarkMenu: TMenuItem;
    SearchMenu: TMenuItem;
    N8: TMenuItem;
    SaveAsMenu: TMenuItem;
    ZoomOutMenu: TMenuItem;
    ZoomInMenu: TMenuItem;
    N11: TMenuItem;
    Timer1: TTimer;
    N4: TMenuItem;
    SetPassMenu: TMenuItem;
    ImageList1: TImageList;
    OpenPictureDialog1: TOpenPictureDialog;
    SavePictureDialog1: TSavePictureDialog;
    Image2: TImage;
    OldSizeMenu: TMenuItem;
    Splitter2: TSplitter;
    N9: TMenuItem;
    ShowNoteMenu: TMenuItem;
    ModifyPicMenu: TMenuItem;
    ImageList2: TImageList;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    N10: TMenuItem;
    CopyMenu: TMenuItem;
    PasteMenu: TMenuItem;
    N14: TMenuItem;
    RunMenu: TMenuItem;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    ToolButton21: TToolButton;
    CutMenu: TMenuItem;
    N12: TMenuItem;
    AddBookMarkMenu: TMenuItem;
    BMarkPopupMenj: TPopupMenu;
    DelPMenu: TMenuItem;
    AllDelPMenu: TMenuItem;
    N13: TMenuItem;
    ToTreeTabPMenu: TMenuItem;
    SearchPopupMenu: TPopupMenu;
    SearchToTreeTabPMenu: TMenuItem;
    SearchToBMpmenu: TMenuItem;
    N22: TMenuItem;
    TreePopupMenu: TPopupMenu;
    ImagePopupMenu: TPopupMenu;
    N20: TMenuItem;
    N21: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    NewMLPopupMenu: TMenuItem;
    NewSpMenu: TMenuItem;
    MLPassPMenu: TMenuItem;
    N39: TMenuItem;
    BMPMenu: TMenuItem;
    DelPopupMenu: TMenuItem;
    ReNPMenu: TMenuItem;
    NotePopupMenu: TMenuItem;
    SaveASPMenu: TMenuItem;
    AddPicPMenu: TMenuItem;
    ImportPMenu: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    procedure Splitter1Moved(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure PageControl1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ExitMenuClick(Sender: TObject);
    procedure HelpMenuClick(Sender: TObject);
    procedure AboutMenuClick(Sender: TObject);
    procedure VFmenuClick(Sender: TObject);
    procedure BMarkMenuClick(Sender: TObject);
    procedure SearchMenuClick(Sender: TObject);
    procedure CompressDataMenuClick(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure SaveAsMenuClick(Sender: TObject);
    procedure PFolderMenuClick(Sender: TObject);
    procedure SFolderMenuClick(Sender: TObject);
    procedure AddPicMenuClick(Sender: TObject);
    procedure DelMenuClick(Sender: TObject);
    procedure TreeView2Change(Sender: TObject; Node: TTreeNode);
    procedure TreeView3Change(Sender: TObject; Node: TTreeNode);
    procedure Image1DblClick(Sender: TObject);
    procedure OldSizeMenuClick(Sender: TObject);
    procedure ZoomOutMenuClick(Sender: TObject);
    procedure ZoomInMenuClick(Sender: TObject);
    procedure RenameMenuClick(Sender: TObject);
    procedure NoteMenuClick(Sender: TObject);
    procedure ShowNoteMenuClick(Sender: TObject);
    procedure Splitter2Moved(Sender: TObject);
    procedure SetPassMenuClick(Sender: TObject);
    procedure TreeView1Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure PassMenuClick(Sender: TObject);
    procedure RunMenuClick(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure CutMenuClick(Sender: TObject);
    procedure CopyMenuClick(Sender: TObject);
    procedure PasteMenuClick(Sender: TObject);
    procedure InFolderMenuClick(Sender: TObject);
    procedure AddBookMarkMenuClick(Sender: TObject);
    procedure PrintMenuClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TreeView2DblClick(Sender: TObject);
    procedure TreeView3DblClick(Sender: TObject);
    procedure DelPMenuClick(Sender: TObject);
    procedure AllDelPMenuClick(Sender: TObject);
    procedure ToTreeTabPMenuClick(Sender: TObject);
    procedure TreeView2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SearchToTreeTabPMenuClick(Sender: TObject);
    procedure SearchToBMpmenuClick(Sender: TObject);
    procedure TreeView3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TreeView2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TreeView1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImagePopupMenuPopup(Sender: TObject);
    procedure TreePopupMenuPopup(Sender: TObject);
    procedure TreeView1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TreeView1DragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    { Private declarations }
    ZoomOut      :single;
    ZoomIn       :Single;
    TabChanged   : boolean;
    DataFile     : string;

    Function ValiDatePass:Boolean ;               //登陆时的密码验证
    Procedure MyShowHint(sender:TObject);               //状态栏提示
    procedure InitializeStatusBar;                      //初始化状态栏
    Function CompressRepairMDB : Boolean;               //压缩修复数据库
    procedure FillTreeView(selfID:Integer;ParentNode:TTreeNode);  //数据填允TreeView1及TreeView2
    procedure FillClass;
    Function  GetMaxID:integer;                                  //取最大ID
    Procedure showPic(ID:Integer);                               //显示PICTURE
    procedure Delrecord(ID:Integer);                 //删除记录
    procedure DelNode(Node:TTreeNode) ;                 //删除节点
    Procedure DelAddBookMark(ID:Integer;bm: Boolean);     //删除添加书签
    procedure SaveAsPic(ID:Integer);                //图片另存
    procedure ModifyPic(ID:Integer;fn:string);          //更改图片
    Procedure EditPic;                    //更改图片
    procedure SaveFolder(parentID:Integer;node:TTreeNode); //保存目录
    procedure SavePicture(ParentID:Integer;node:TTreeNode;fn:string);//保存图片
    Procedure ZoomPicture(Zoom:single) ;           //图片放大,缩小
    Procedure ModifyFolderPass(ID:Integer;Password:String); //设定目录密码
    Procedure ModifyLogonPass(Password:String);          //设定登陆密码
    procedure ImportFromDir(Node:TTreeNode);  //从目录导入图片
    Procedure ChangeWallPaper(const fn:string;wallpaperStyle:integer;TileWallPaper:integer);//设置墙纸
    Function ToBMP(Image:TImage):string;  //从image转BMP
    procedure CopyToClipBoard ;
    procedure CutToClipBoard;
    Procedure PasteFromClipBoard;
    Function GetPicOrFolderCount(m:integer):integer;     //取目录或文件数m=0返回文件数,m=1反回目录数
    procedure ModifyParent(sourceID,ParentID:Integer);    //拖动后,修改父节点
    procedure WMDropFiles(var msg:TWMDROPFILES);
    Message WM_DROPFILES;
    procedure PrintPicture(Image:Timage;a:integer);

  public
    { Public declarations }
  end;

  TNodeData = record
      ID     :integer;
      Caption:string[50];
      Password:string[20];
  end;
  nodeData=^TNodeData;

var
  Form1: TForm1;

const
   link='Provider=Microsoft.Jet.OLEDB.4.0;'+
        'Data Source=%s;Persist Security Info=False;'+
        'Jet OLEDB:Database Password=dltjy.lf';

implementation

uses About, NoteUnit, LogonUnit, SetupPassUnit, AviUnit;

{$R *.dfm}

function MyCustomSortProc(node1, node2: TTreeNode; Data: longword): integer; stdcall;
begin
   if ((node1.ImageIndex=1) or (node1.ImageIndex=2)) and (node2.ImageIndex=0) then
   begin
       result:=-1;
       exit;
   end;

   if (node1.ImageIndex=0) and ((node2.ImageIndex=2) or (node2.ImageIndex=1)) then
   begin
       result:=1;
       exit;
   end;

   result:=AnsiCompareText(node1.Text,node2.Text);
end;

procedure TForm1.Splitter1Moved(Sender: TObject);
begin
   if panel5.Width<200 then panel5.Width:=200;
   //if scrollbox1.Width<200 then scrollbox1.Width:=200;
   edit1.Width:=panel4.Width-5;
   if panel1.Width<20 then panel1.Width:=20;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    ZoomOut:=1.0;
    ZoomIn:=1.0;

    label3.Caption:='注'+#13+'释';
    label3.AutoSize:=true;
    InitializeStatusBar;
    application.OnHint:=MyShowHint;

    DataFile:=ExtractFilePath(application.ExeName)+'PicData.pdb';
    ADOConnection1.ConnectionString:=format(Link,[DataFile]);
    ADOConnection1.Connected:=true;
    if NOT ValiDatePass THEN Application.Terminate;

    FillClass;

    Statusbar1.Panels[2].Text:=intToStr(GetPicOrFolderCount(1));
    Statusbar1.Panels[4].Text:=intToStr(GetPicOrFolderCount(0));

    DragAcceptFiles(handle,true);

end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
    ADOConnection1.Connected:=false;
    DragAcceptFiles(Handle,False);
end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin
  TabChanged:=true;
  if panel1.Width<=20 then
     panel1.Width:=185;
  edit1.Width:=panel4.Width-5;
  case PageControl1.ActivePageIndex of
     0:begin
          VFmenu.Checked:=True;
          if TreeView1.Selected=nil then
          begin
              Image1.Picture.Assign(nil);
              Memo1.Clear;
              exit;
          end;
          showPic(NodeData(Treeview1.Selected.Data).id);
       end;
     1:begin
          BMarkMenu.Checked:=True;
          if TreeView2.Selected=nil then
          begin
              Image1.Picture.Assign(nil);
              Memo1.Clear;
              exit;
          end;
          ShowPic(NodeData(Treeview2.Selected.Data).id);
       end;
     2:begin
          SearchMenu.Checked:=True;
          edit1.SetFocus;
          if TreeView3.Selected=nil then
          begin
              Image1.Picture.Assign(nil);
              Memo1.Clear;
              exit;
          end;
          ShowPic(NodeData(Treeview3.Selected.Data).id);
       end;
  end;
end;

procedure TForm1.PageControl1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if  TabChanged then  begin
      TabChanged:=false;
      exit;
  end; 
  if panel1.Width>20 then
     panel1.Width:=20
  else panel1.Width:=185;
end;


procedure TForm1.MyShowHint(sender: TObject);
begin
   StatusBar1.Panels[0].Text:=application.Hint;
end;

procedure TForm1.InitializeStatusBar;
begin
   with StatusBar1 do begin
       panels[7].Width:=110;
       panels[6].Width:=110;
       panels[5].Width:=60;
       panels[4].Width:=80;
       panels[3].Width:=50;
       panels[2].Width:=60;
       panels[1].Width:=50;
       panels[0].Width:=StatusBar1.Width-Panels[7].Width-Panels[6].Width-Panels[5].Width-panels[4].Width-panels[3].Width-panels[2].Width-panels[1].Width;
   end;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
    InitializeStatusBar;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
   StatusBar1.Panels[6].Text:=DateTimeToStr(now);
end;

procedure TForm1.ExitMenuClick(Sender: TObject);
begin
   close;
end;

procedure TForm1.HelpMenuClick(Sender: TObject);
begin
    messagedlg('不好意思,没有帮助!!',mtInformation,[mbOK],0);
end;

procedure TForm1.AboutMenuClick(Sender: TObject);
begin
   AboutBox:=TaboutBox.Create(self);
   AboutBox.ShowModal;
   AboutBox.Free;
end;

procedure TForm1.VFmenuClick(Sender: TObject);
begin
   pagecontrol1.ActivePage:=treetab;
   VFmenu.Checked:=true;
   if panel1.Width<=20 then panel1.Width:=185;
   if TreeView1.Selected=nil then
   begin
       Image1.Picture.Assign(nil);
       Memo1.Clear;
       exit;
   end;
   showPic(NodeData(Treeview1.Selected.Data).id);
end;

procedure TForm1.BMarkMenuClick(Sender: TObject);
begin
   pagecontrol1.ActivePage:=BMarkTab;
   BMarkMenu.Checked:=true;
   if panel1.Width<=20 then panel1.Width:=185;
   if TreeView2.Selected=nil then
   begin
       Image1.Picture.Assign(nil);
       Memo1.Clear;
       exit;
   end;
   showPic(NodeData(Treeview2.Selected.Data).id);
end;

procedure TForm1.SearchMenuClick(Sender: TObject);
begin
   pagecontrol1.ActivePage:=SearchTab;
   SearchMenu.Checked:=True;
   edit1.SetFocus;
   if panel1.Width<=20 then panel1.Width:=185;
   if TreeView3.Selected=nil then
   begin
       Image1.Picture.Assign(nil);
       Memo1.Clear;
       exit;
   end;
   showPic(NodeData(Treeview3.Selected.Data).id);
end;

procedure TForm1.CompressDataMenuClick(Sender: TObject);
begin
   ADOConnection1.Connected:=false;
   AviForm:=TAviForm.Create(self);
   AviForm.Caption:='正在压缩数据库,请等待...';
   AviForm.Label1.Caption:='';
   AviForm.Label1.Visible:=false;
   AviForm.Button1.Enabled:=false;
   AviForm.Animate1.CommonAVI:=aviDeleteFile;
   AviForm.Animate1.Active:=true;
   AviForm.Show;
   application.ProcessMessages;
   if CompressRepairMDB then messageDlg('数据库压缩修复成功!!',mtInformation,[mbOK],0);
   AviForm.Animate1.Active:=false;
   AviForm.Close;
   AviForm.Free;
   ADOConnection1.Connected:=true;
end;

function TForm1.CompressRepairMDB: Boolean;
var
  dao          :OLEVariant;
  TempDB       :String;
begin
   result:=true;
   screen.Cursor:=crHourGlass;
   TempDB:=ChangeFileExt(DataFile,'.$$$');
   if fileExists(TempDB) THEN DeleteFile(TempDB);
   Dao:=CreateOLEObject('DAO.DBEngine.36');
   try
       try
           dao.compactDatabase(DataFile,TempDB,'',0,';pwd=dltjy.lf');
           deletefile(DataFile);
           renamefile(TempDB,DataFile) ;
       except
           on e:Exception do begin
               MessageDlg('数据库压缩修复失败！！'+#13+#13+e.Message,mtError,[mbOK],0);
               result:=false;
           end;
       end;
   finally
       dao:=Unassigned;
       screen.Cursor:=crDefault;
   end;
end;

procedure TForm1.FillTreeView(selfID: Integer; ParentNode: TTreeNode);   //填允TREEVIEW1
var
   query       :TADOQuery;
   Node        :TTreeNode;
   Pnode       :NodeData;
begin
   query:=TADOQuery.Create(self);
   try
      query.Connection:=ADOConnection1;
      query.Close;
      query.SQL.Clear;
      query.SQL.Add('select * from PData where PID='+IntToStr(selfID));
      Query.Open;
      query.First;
      while not query.Eof do begin
         new(pnode);
         pnode.id:=query.fieldbyname('ID').AsInteger;
         Pnode.caption:=query.fieldbyname('FName').AsString;
         Pnode.Password:=Query.fieldByName('Pass').AsString;
         node:=Treeview1.Items.AddChildObject(parentNode,pnode.caption,pnode); //目录页
         node.ImageIndex:=query.fieldbyname('Folder').AsInteger;
         node.SelectedIndex:=query.fieldbyname('Folder').AsInteger;
         if query.FieldByName('BMark').AsBoolean then     //如果是书签则加入TreeView2;
         begin
            Treeview2.Items.AddChildObject(nil,pnode.caption,pnode);
         end;

         fillTreeView(query.fieldbyname('ID').AsInteger,node);   //递归调用
         query.Next ;
      end;
      query.Close;
   finally
      query.Free;
   end;
end;

procedure TForm1.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
    showpic(NodeData(Node.Data).id);
end;

procedure TForm1.FillClass;
begin
   screen.Cursor:=crHourGlass;
   treeview1.Items.BeginUpdate;
   TreeView2.Items.BeginUpdate;
   TreeView2.Items.Clear;
   treeview1.Items.Clear;
   fillTreeView(0,nil);
   //TreeView2.CustomSort(@MyCustomSortProc,0);
   TreeView1.CustomSort(@MyCustomSortProc,0);
   TreeView2.Items.EndUpdate;
   TreeView1.Items.EndUpdate;
   Screen.Cursor:=crDefault;
end;

function TForm1.GetMaxID: integer;
var
   query  :TADOQuery;
begin
   result:=0;
   query:=TADOQuery.Create(self);
   try
      query.Connection:=ADOConnection1;
      query.Close;
      query.SQL.Clear;
      query.SQL.Add('select ID From PData');
      query.Open;
      query.First;
      while not query.Eof do
      begin
         if result<query.FieldByName('ID').AsInteger then
            result:=query.FieldByName('ID').AsInteger;
         query.Next;
      end;
      Query.Close;
   finally
      Query.Free;
   end;
end;

procedure TForm1.showPic(ID: Integer);             //显示图片
var
   query    :TADOQuery;
   jpg      :TJPEGImage;
   bmp      :TBitmap;
   ext      :string;
   stream   :TMemorystream;
begin
   Image2.Visible:=false;
   ZoomOut:=1.0;
   ZoomIn:=1.0;
   query:=TADOQuery.Create(self);
   try
       query.Connection:=ADOConnection1;
       query.Close;
       query.SQL.Clear;
       query.SQL.Add('select * from PData where ID='+IntTostr(ID));
       Query.Open;
       query.First;
       if query.RecordCount=0 then begin
           query.Close;
           query.Free;
           messagedlg('没有图片可显示!',mtWarning,[mbOK],0);
           Exit;
       end;
       memo1.Text:=query.fieldByName('Note').AsString; //文件夹或文件注释
       if query.FieldByName('Folder').AsInteger=0 then
       begin   // 如查是文件  0为文件,1,2为文件夹
       ext:=query.fieldByName('Ext').AsString;
       ext:=lowercase(ext);
       stream:=TMemoryStream.Create;
       try
          TBlobField(query.FieldByName('pic')).SaveToStream(stream);
          Stream.Position:=0;
          if ext='.bmp' then begin
               bmp:=TBitmap.Create;
               try
                   bmp.LoadFromStream(stream);
                   //image1.Picture.Graphic.LoadFromStream(stream);
                   Image1.Stretch:=false;
                   //image1.Left:=0;
                   //image1.Top:=0;
                   image1.Height:=bmp.Height;
                   image1.Width:=bmp.Width;
                   image1.Picture.Assign(bmp);
                   Image1.BringToFront;
                   image1.Visible:=true;
               finally
                   bmp.Free;
               end;
          end else if ext='.jpg' then begin
               jpg:=TJPEGImage.Create;
               try
                   jpg.LoadFromStream(stream);
                   image1.Stretch:=false;
                   //image1.Left:=0;
                   //image1.Top:=0;
                   image1.Height:=jpg.Height;
                   image1.Width:=jpg.Width;
                   image1.Picture.Assign(jpg);
                   image1.BringToFront;
                   image1.Visible:=true;
               finally
                   jpg.Free;
               end;
          end;
       finally
           stream.Free;
       end;
       end else Image1.Picture.Assign(nil);
       query.Close;
   finally
       query.Free;
   end;
end;

procedure TForm1.Delrecord(ID: Integer);        //删除记录
var
   query:TADOQuery;
begin
   query:=TADOQuery.Create(self);
   try
      query.Connection:=ADOConnection1;
      query.Close;
      query.SQL.Clear;
      query.SQL.Add('delete from PData where ID='+IntToStr(ID));
      Query.ExecSQL;
   finally
       query.Free;
   end;
end;

procedure TForm1.DelNode(Node:TTreeNode);
var
   vnode: TTreenode;
begin
   vnode:=Node.getFirstChild;
   while vnode<>nil do begin
       DelNode(vnode);           //递归查找
       Delrecord(nodeData(vnode.Data).id);      //删除记录
       vnode:=node.GetNextChild(vnode);
   end;
end;

procedure TForm1.ModifyPic(ID: Integer; fn: string);     //图片修改
var
  query:TADOQuery;
  ext  :string;
begin
   ext:=ExtractFileExt(fn);
   ext:=lowerCase(ext);
   query:=TADOQuery.Create(self);
   try
       query.Connection:=ADOConnection1;
       query.Close;
       query.SQL.Clear;
       query.SQL.Add('select * from PData where ID='+inttostr(ID));
       Query.Open;
       query.Edit;
       TBlobField(query.FieldByName('Pic')).LoadFromFile(fn);
       query.FieldByName('Ext').AsString:=ext;
       //query['Ext']:=ext;
       query.Post;
       query.Close;
   finally
       query.Free;
   end;
end;

procedure TForm1.SaveAsPic(ID: Integer);    //图片另存
var
  query  :TADOQuery ;
  ext    :string;
  fn     :string;
begin
   query:=TADOQuery.Create(self);
   try
       query.Connection:=ADOConnection1;
       query.Close;
       query.SQL.Clear;
       query.SQL.Add('select * from PData where ID='+IntToStr(ID));
       query.Open;
       ext:=Query.fieldbyname('Ext').AsString;

       savepicturedialog1.Title:='图片另存为:';
       savepicturedialog1.Filter:='*'+ext+'|*'+ext;
       savepicturedialog1.FilterIndex:=1;
       if savepicturedialog1.Execute then
       begin
          fn:=savepicturedialog1.FileName+ext;
          TBlobField(Query.FieldByName('Pic')).SaveToFile(fn);
       end;
       query.Close;
   finally
       query.Free;
   end;
end;

procedure TForm1.SaveAsMenuClick(Sender: TObject);   //图片另存
begin
   if PageControl1.ActivePage<>TreeTab then PageControl1.ActivePage:=TreeTab;
   if (TreeView1.Selected=nil) or (treeview1.Selected.ImageIndex<>0) then exit;  //不是图处则退出
   screen.Cursor:=crHourGlass;
   SaveAsPic(NodeData(Treeview1.Selected.Data).id);
   screen.Cursor:=crDefault;
end;

procedure TForm1.PFolderMenuClick(Sender: TObject); //新建根目录
var
   node        :TTreeNode;
   nodeCaption :string;
   Pnode       :NodeData;
begin
   if PageControl1.ActivePage<>TreeTab then PageControl1.ActivePage:=TreeTab;
   if not InputQuery('新建','根目录名称：：',NodeCaption) then exit;
   new(pnode);
   pnode.caption:=nodeCaption;
   pnode.id:=GetMaxID+1;
   Pnode.Password:='';
   Node:=TreeView1.Items.AddChildObject(nil,nodeCaption,pnode);
   node.ImageIndex:=1;
   node.SelectedIndex:=1;
   saveFolder(0,node);
   node.Selected:=true;

   Statusbar1.Panels[2].Text:=intToStr(GetPicOrFolderCount(1));
   Statusbar1.Panels[4].Text:=intToStr(GetPicOrFolderCount(0));
   //dispose(pnode);
end;

procedure TForm1.SFolderMenuClick(Sender: TObject); //新建子目录
var
   node        :TTreeNode;
   subNode     :TTreeNode;
   nodeCaption :String;
   Pnode       :NodeData;
begin
   if PageControl1.ActivePage<>TreeTab then PageControl1.ActivePage:=TreeTab;
   if TreeView1.Selected=nil then begin
       messagedlg('请选择一个目录,以便建立子目录!',mtInformation,[mbOK],0);
       Exit;
   end;
   if TreeView1.Selected.ImageIndex=0 then
      node:=TreeView1.Selected.Parent else
      node:=TreeView1.Selected;
   //nodeCaption:=Inputbox('新建','请输入新建子目录的名称:','子目录');
   if not InputQuery('新建','子目录名称：：',NodeCaption) then exit;
   new(Pnode);
   pnode.caption:=NodeCaption;
   pnode.id:=GetMaxID+1;
   pnode.Password:='';
   SubNode:=TreeView1.Items.AddChildObject(Node,NodeCaption,pnode);
   SubNode.ImageIndex:=1;
   SubNode.SelectedIndex:=1;
   SaveFolder(NodeData(node.Data).id,SubNode);    //保存目录
   SubNode.Selected:=true;
   //dispose(Pnode);//??????????????????
    Statusbar1.Panels[2].Text:=intToStr(GetPicOrFolderCount(1));
    Statusbar1.Panels[4].Text:=intToStr(GetPicOrFolderCount(0));
end;

procedure TForm1.SaveFolder(parentID: Integer; node:TTreeNode);  //保存目录
var
   query   :TADOQuery;
begin
   query:=TADOQuery.Create(self);
   try
      query.Connection:=ADOConnection1;
      query.Close;
      query.SQL.Clear;
      query.SQL.Add('Insert into PData values(');
      query.SQL.Add(Inttostr(nodeData(node.Data).id)+',');     //ID
      query.SQL.Add(intToStr(ParentID)+',');            //PID
      Query.SQL.Add('"'+nodeData(node.Data).caption+'",');    //FName
      query.SQL.Add('"",') ;        //ext
      query.SQL.Add('null,');     //pic
      query.SQL.Add('1,');        //Folder
      query.SQL.Add('false,') ;    //BMark
      query.SQL.Add('"'+nodeData(node.Data).Password+'",');    //pass
      query.SQL.Add('"'+nodeData(node.Data).caption+'")');    //note
      query.ExecSQL
   finally
       Query.Free;
   end;
end;

procedure TForm1.SavePicture(ParentID: Integer; node: TTreeNode;   //保存图片
  fn: string);
var
   query:TADOQuery;
begin
   query:=TADOquery.Create(self);
   try
       with query do
       begin
           Connection:=ADOConnection1;
           close;
           sql.Clear;
           sql.Add('select * from PData');
           open;
           Append;
           FieldByName('ID').AsInteger:=nodeData(node.Data).id;
           FieldByName('PID').AsInteger:=ParentID ;
           FieldByName('FName').AsString:=nodeData(node.Data).caption;
           FieldByName('Ext').AsString:=LowerCase(ExtractFileExt(fn));
           TBlobField(FieldByName('Pic')).LoadFromFile(fn);
           FieldByName('Folder').AsInteger:=0;
           FieldByName('BMark').AsBoolean:=false;
           FieldByName('Pass').AsString:='';
           FieldByName('Note').AsString:=fn;
           Post;
       end;
   finally
       query.Free;
   end;
end;

procedure TForm1.AddPicMenuClick(Sender: TObject);
var
   i      :integer;
   PNode  :NodeData;
   Node   :TTreeNode;
   NodeCaption:string;
begin
   if PageControl1.ActivePage<>TreeTab then PageControl1.ActivePage:=TreeTab;
   if Treeview1.Selected=nil then begin
       messagedlg('必须先选择一个目录,以便添加图片!',mtError,[mbOK],0);
       Exit;
   end;
   if TreeView1.Selected.ImageIndex=0 then
       TreeView1.Selected.Parent.Selected:=true;
       
   Node:=nil;
   OpenPictureDialog1.Title:='添加图片:';
   openpictureDialog1.Options:=[ofHideReadOnly,ofAllowMultiSelect,ofPathMustExist,ofFileMustExist,ofEnableSizing,ofDontAddToRecent,ofForceShowHidden];
   if not openpicturedialog1.Execute then exit;
   AviForm:=TAviForm.Create(self);
   AviForm.Caption:='正在添加图片,请等待...';
   AviForm.Label1.Caption:='';
   aviform.Label1.Visible:=true;
   AviForm.Button1.Enabled:=True;
   AviForm.stop:=false;
   AviForm.Animate1.CommonAVI:=aviCopyFiles;
   AviForm.Animate1.Active:=True;
   AviForm.Show;
   Screen.Cursor:=crHourGlass;
   TreeView1.Items.BeginUpdate;
   Try
      for i:=0 to OpenPictureDialog1.Files.Count-1 do
      begin
          application.ProcessMessages;
          if AviForm.stop then break;
          NodeCaption:=ExtractFileName(OpenPictureDialog1.Files.Strings[i]);
          AviForm.Label1.Caption:=NodeCaption;
          NodeCaption:=Copy(NodeCaption,1,length(NodeCaption)-4);
          new(PNode);
          PNode.id:=GetMaxID+1;
          PNode.caption:=NodeCaption;
          Pnode.Password:='';
          Node:=TreeView1.Items.AddChildObject(TreeView1.Selected,NodeCaption,PNode);
          Node.SelectedIndex:=0;
          Node.ImageIndex:=0;
          SavePicture(NodeData(Node.Parent.Data).id,Node,OpenPictureDialog1.Files.Strings[i]);
      end;
      Node.Selected:=True;
      //showPic(NodeData(Node.Data).id);
   finally
      TreeView1.Items.EndUpdate;
      AviForm.Close;
      AviForm.Free;
      Screen.Cursor:=crDefault;
   end;
    Statusbar1.Panels[2].Text:=intToStr(GetPicOrFolderCount(1));
    Statusbar1.Panels[4].Text:=intToStr(GetPicOrFolderCount(0));   
end;

procedure TForm1.DelMenuClick(Sender: TObject);
begin
   if PageControl1.ActivePage=TreeTab then begin
       if Treeview1.Selected.ImageIndex=0 then
       begin
          if messagedlg('确认删除图片:'+TreeView1.Selected.Text+'吗?',mtInformation,[mbYES,mbNO],0)<>mrYes then exit;
       end else
           if messagedlg('确认删除目录:'+TreeView1.Selected.Text+#13+'及以下的所有内容吗?',mtInformation,[mbYES,mbNO],0)<>mrYes then exit;

       DelNode(TreeView1.Selected);
       DelRecord(NodeData(TreeView1.Selected.Data).id);
       TreeView1.Selected.Delete;
       
       Statusbar1.Panels[2].Text:=intToStr(GetPicOrFolderCount(1));
       Statusbar1.Panels[4].Text:=intToStr(GetPicOrFolderCount(0));
   end else if PageControl1.ActivePage=BMarkTab then begin  //删除书签
       If messagedlg('确认删除书签吗?',mtInformation,[mbYES,mbNO],0)<>mrYes then exit;
       //owmessage(inttostr(NodeData(TreeView2.Selected.Data).ID)) ;
       DelAddBookMark(NodeData(TreeView2.Selected.Data).ID,False);
       TreeView2.Selected.Delete;
   end;
end;

procedure TForm1.TreeView2Change(Sender: TObject; Node: TTreeNode);
begin
   showPic(NodeData(Node.Data).id);
end;

procedure TForm1.TreeView3Change(Sender: TObject; Node: TTreeNode);
begin
   showPic(NodeData(Node.Data).id);
end;

procedure TForm1.Image1DblClick(Sender: TObject);
begin
   if PageControl1.ActivePage<>TreeTab then PageControl1.ActivePage:=TreeTab;
   if (TreeView1.Selected=nil) or (TreeView1.Selected.ImageIndex<>0) then exit;
   EditPic;
end;

procedure TForm1.EditPic;
begin
   openpictureDialog1.Title:='更改图片';
   openpictureDialog1.Options:=[ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing, ofDontAddToRecent, ofForceShowHidden];
   if not OpenPictureDialog1.Execute then exit;
   ModifyPic(NodeData(TreeView1.Selected.Data).id,OpenPictureDialog1.FileName);
   image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TForm1.OldSizeMenuClick(Sender: TObject);
begin
    //if (TreeView1.Selected=nil) or (TreeView1.Selected.ImageIndex<>0)
    //   or (TreeView2.Selected=nil) or (treeview3.Selected=nil) then exit;
    ZoomOut:=1.0;
    ZoomIn:=1.0;
    Image2.Visible:=False;
    Image2.Picture.Assign(nil);
    image1.BringToFront;
    image1.Visible:=true;
end;

procedure TForm1.ZoomPicture(Zoom:single);     //图片缩放
var
   DRect:TRect;
   w,h  :integer;
   bitmap:TBitMap;
begin
   w:=Round(Image1.Width*Zoom);
   h:=Round(Image1.Height*Zoom);
   DRect:=Rect(0,0,w,h);
   Bitmap:=TBitmap.Create;
   try
       bitmap.Width:=w;
       bitmap.Height:=h;
       bitmap.Canvas.StretchDraw(DRect,Image1.Picture.Graphic);
       Image2.Parent:=ScrollBox1;
       //Image2.Left:=0;
       //image2.Top:=0;
       image2.Width:=w;
       image2.Height:=h;
       image2.BringToFront;
       image2.Visible:=true;
       image1.Visible:=false;
       Image2.Picture.Assign(bitmap);
   finally
       BitMap.Free;
   end;
end;

procedure TForm1.ZoomOutMenuClick(Sender: TObject);
begin
   if not Assigned(Image1.Picture) Then exit;
   if PageControl1.ActivePage=TreeTab then
      if (TreeView1.Selected=nil) or (TreeView1.Selected.ImageIndex<>0) then exit;
   if PageControl1.ActivePage=BMarkTab then
      if TreeView2.Selected=nil then exit;
   if PageControl1.ActivePage=SearchTab then
      if TreeView3.Selected=nil then exit;
   ZoomOut:=ZoomOut+0.1;
   ZoomIn:=ZoomOut;
   ZoomPicture(ZoomOut);
end;

procedure TForm1.ZoomInMenuClick(Sender: TObject);
begin
   if not Assigned(image1.Picture) then exit;
   if PageControl1.ActivePage=TreeTab then
      if (TreeView1.Selected=nil) or (TreeView1.Selected.ImageIndex<>0) then exit;
   if PageControl1.ActivePage=BMarkTab then
      if TreeView2.Selected=nil then exit;
   if PageControl1.ActivePage=SearchTab then
      if TreeView3.Selected=nil then exit;
   ZoomIn:=ZoomIn-0.1;
   if zoomin<0.0 then zoomin:=0.0;
   ZoomOut:=ZoomIn;
   ZoomPicture(ZoomIn);
end;

procedure TForm1.RenameMenuClick(Sender: TObject);  //重命名
var
   NewName:string;
   query:TADOQuery;
begin
   if PageControl1.ActivePage<>TreeTab then PageControl1.ActivePage:=TreeTab;
   if TreeView1.Selected=nil then exit;
   if not InputQuery('重命名','输入新名称：：',NewName) then exit;
   if NewName='' then exit;
   if NewName=NodeData(TreeView1.Selected.Data).caption then exit;
   query:=TADOQuery.Create(self);
   try
       query.Connection:=ADOConnection1;
       query.Close;
       query.SQL.Clear;
       query.SQL.Add('select * from PData where ID='+IntToStr(NodeData(Treeview1.Selected.Data).id));
       query.Open;
       query.First;
       query.Edit;
       query.FieldByName('FName').AsString:=NewName;
       query.Post;
       query.Close;
       NodeData(TreeView1.Selected.Data).caption:=NewName;
       TreeView1.Selected.Text:=NewName;
   finally
       query.Free;
   end;
end;

procedure TForm1.NoteMenuClick(Sender: TObject);   //更改注释
var
   query:TADOquery;
begin
   if PageControl1.ActivePage<>TreeTab then PageControl1.ActivePage:=TreeTab;
   if TreeView1.Selected=nil then exit;
   Form2:=TForm2.Create(self);
   Form2.Memo1.Text:=memo1.Text;
   Form2.Caption:=Form2.Caption+'--['+TreeView1.Selected.Text+']';
   if Form2.ShowModal<>mrOK Then
   begin
       Form2.Free;
       exit;
   end;
   query:=TADOQuery.Create(self);
   try
      query.Connection:=ADOConnection1;
      query.Close;
      query.SQL.Clear;
      query.SQL.Add('select * from PData where ID='+IntToStr(NodeData(Treeview1.Selected.Data).id));
      Query.Open;
      query.First;
      query.Edit;
      query.FieldByName('Note').AsString:=Form2.Memo1.Text;
      query.Post;
      query.Close;
      memo1.Text:=Form2.Memo1.Text;
   finally
      Form2.Free;
      Query.Free
   end;
end;

procedure TForm1.ShowNoteMenuClick(Sender: TObject);
begin
   TMenuItem(sender).Checked:= not TMenuItem(sender).Checked;
   If TMenuItem(sender).Checked then
   begin
      Panel6.Top:=self.Height-180;
      panel6.Height:=180;
   end else panel6.Height:=1;
end;

procedure TForm1.Splitter2Moved(Sender: TObject);
begin
   if Panel6.Height<10 then ShowNoteMenu.Checked:=false else ShowNoteMenu.Checked:=true;
end;

procedure TForm1.SetPassMenuClick(Sender: TObject);
begin
    if PageControl1.ActivePage<>TreeTab then PageControl1.ActivePage:=TreeTab;
    if (TreeView1.Selected=nil) or (TreeView1.Selected.ImageIndex=0) then exit;
    PassForm:=TPassForm.Create(self);
    if PassForm.ShowModal<>mrOK Then begin
        PassForm.Free;
        exit;
    end;
    if PassForm.Edit1.Text<>NodeData(TreeView1.Selected.Data).Password then
    begin
        messagedlg('密码不正确!',mtError,[mbOK],0);
        PassForm.Free;
        exit;
    end;
    if PassForm.Edit2.Text<>PassForm.Edit3.Text then
    begin
        Messagedlg('新密码不匹配!',mtWarning,[mbOK],0);
        PassForm.Free;
        Exit;
    end;
    NodeData(TreeView1.Selected.Data).Password:=PassForm.Edit2.Text;
    PassForm.Free;
    if NodeData(TreeView1.Selected.Data).Password='' then
    begin
        Treeview1.Selected.ImageIndex:=1;
        TreeView1.Selected.SelectedIndex:=1;
    end else begin
        Treeview1.Selected.ImageIndex:=2;
        TreeView1.Selected.SelectedIndex:=2;
    end;
    ModifyFolderPass(NodeData(TreeView1.Selected.Data).ID,NodeData(TreeView1.Selected.Data).Password);
end;

procedure TForm1.ModifyFolderPass(ID: Integer; Password: String);            //设定目录密码
var
   query:TADOQuery ;
begin
   query:=TADOQuery.Create(self);
   try
       query.Connection:=ADOConnection1;
       query.Close;
       query.SQL.Clear;
       query.SQL.Add('select * from PData where ID='+IntToStr(ID));
       Query.Open;
       query.First;
       query.Edit;
       query.FieldByName('Pass').AsString:=PassWord;
       if PassWord='' then query.FieldByName('Folder').AsInteger:=1
          else  query.FieldByName('Folder').AsInteger:=2;
       query.Post;
       query.Close;
   finally
       query.Free;
   end;
end;

procedure TForm1.TreeView1Expanding(Sender: TObject; Node: TTreeNode;
  var AllowExpansion: Boolean);
begin
   if Node.ImageIndex=2 then begin
       LogonForm:=TLogonForm.Create(Self);
       LogonForm.Caption:='访问';
       AllowExpansion:=(LogonForm.ShowModal=mrOK) AND (LogonForm.Edit1.Text=NodeData(Node.Data).Password);
   end;
end;

Function TForm1.ValiDatePass:Boolean;    //登陆时的密码验证           //
var
   query :TADOQuery;
   Pass  :String;
begin
   Query:=TADOQuery.Create(self);
   query.Connection:=ADOConnection1;
   query.Close;
   query.SQL.Clear;
   query.SQL.Add('select * from PassW');
   query.Open;
   query.First;
   if Query.RecordCount=0 then
   begin
       query.Close;
       query.Free;
       result:=true;
       exit;
   end;
   pass:=Query.fieldbyname('Pass').AsString;
   query.Close;
   query.Free;
   if pass='' then begin
      result:=true;
      exit;
   end;
   LogonForm:=TLogonForm.Create(self);
   LogonForm.Caption:='登陆';
   if (LogonForm.ShowModal<>mrOK) OR (LogonForm.Edit1.Text<>pass) then
       Result:=false else result:=True;
   LogonForm.Free;
end;

procedure TForm1.PassMenuClick(Sender: TObject);
var
   query:TADOQuery;
   pass :String;
   NewPass:string;
begin
   if  ADOConnection1.Connected=false then exit;
   PassForm:=TPassForm.Create(self);
   if PassForm.ShowModal<>mrOK Then begin
       PassForm.Free;
       Exit;
   end;
   if PassForm.Edit2.Text<>PassForm.Edit3.Text then
   begin
        Messagedlg('新密码不匹配!',mtWarning,[mbOK],0);
        PassForm.Free;
        Exit;
   end;
   pass:=PassForm.Edit1.Text;
   NewPass:=passForm.Edit2.Text;
   PassForm.Free;

   query:=TADOQuery.Create(self);
   query.Connection:=ADOConnection1;
   query.Close;
   query.SQL.Clear;
   query.SQL.Add('Select * from PassW');
   Query.Open;
   query.First;
   if query.FieldByName('Pass').AsString<>Pass then
   begin
        messagedlg('密码不正确!',mtError,[mbOK],0);
        query.Close;
        Query.Free;
        exit;
   end;
   query.Close;
   query.Free;
   ModifyLogonPass(NewPass);
   messagedlg('密码修改成功!',mtInformation,[mbOK],0);
end;

procedure TForm1.ModifyLogonPass(Password:String);
var
   query:TADOQuery;
begin
   query:=TADOQuery.Create(self);
   try
       query.Connection:=ADOConnection1;
       query.Close;
       query.SQL.Clear;
       query.SQL.Add('Select * from PassW');
       Query.Open;
       query.First;
       query.Edit;
       query.FieldByName('Pass').AsString:=PassWord;
       query.Post;
       query.Close;
   finally
       query.Free;
   end;
end;

procedure TForm1.RunMenuClick(Sender: TObject);
begin
   ShellExecute(Handle,'open','mspaint.exe',nil,nil,SW_SHOWNORMAL);    //运行小画家
end;

procedure TForm1.N19Click(Sender: TObject);
var
  image:TImage;
begin
   if PageControl1.ActivePage=TreeTab then
      if (TreeView1.Selected=nil) or (TreeView1.Selected.ImageIndex<>0) then exit;
   if PageControl1.ActivePage=BMarkTab then
      if TreeView2.Selected=nil then exit;
   if PageControl1.ActivePage=SearchTab then
      if TreeView3.Selected=nil then exit;
   if (ZoomOut=1.0) and (ZoomIn=1.0) then image:=image1
       else image:=image2;
  Case (sender as TMenuItem).Tag of
    0: ChangeWallPaper(Tobmp(image),0,0);   //居中
    1: ChangeWallPaper(Tobmp(image),0,1);   //平铺
    2: ChangeWallPaper(Tobmp(image),2,0);   //拉伸
  end;
end;

procedure TForm1.ChangeWallPaper(const fn: string; wallpaperStyle,
  TileWallPaper: integer);
var
   reg:TRegistry;
begin
   reg:=TRegistry.Create;
   TRY
       reg.RootKey:=HKEY_CURRENT_USER;
       reg.OpenKey('Control Panel\Desktop',false);
       reg.WriteString('TileWallPaper',intToStr(TileWallPaper));
       reg.WriteString('WallPaperStyle',inttostr(wallpaperStyle));
       reg.WriteString('WallPaper',fn);
       systemParametersInfo(SPI_SETDESKWallPaper,0,nil,SPIF_SENDCHANGE);
       reg.CloseKey;
   Finally
       reg.Free;
   end;
end;

function TForm1.ToBMP(Image: TImage): string;
Var
   bmp:TBitMap;
   bmpfile:string;
begin
   bmpfile:=ExtractFilePath(Application.ExeName)+'WallPaperByDltjy.bmp';
   bmp:=TBitmap.Create;
   try
       bmp.PixelFormat:=pfDevice;
       bmp.Width:=image.Picture.Width;
       bmp.Height:=image.Picture.Height;
       bmp.Canvas.Draw(0,0,image.Picture.Graphic);
       bmp.SaveToFile(bmpfile);
   finally
       bmp.Free;
   end;
   result:=bmpfile;
end;

procedure TForm1.CopyToClipBoard;
begin
    ClipBoard.Assign(Image1.Picture);
end;

procedure TForm1.CutToClipBoard;
var
  ARect:TRect;
  bmp  :TBitMap;
  jpg  :TJPEGImage;
  fn   :String;
begin
   ClipBoard.Assign(Image1.Picture);
   bmp:=TBitMap.Create;
   try
       bmp.Assign(Image1.Picture.Graphic);
       bmp.Canvas.CopyMode:=cmWhiteNess;
       ARect:=Rect(0,0,Image1.Width,Image1.Height);
       bmp.Canvas.CopyRect(ARect,bmp.Canvas,ARect);
       bmp.Canvas.CopyMode:=cmSrcCopy;
       image1.Picture.Assign(bmp);
   finally
       bmp.Free;
   end;
   IF messagedlg('图片已经修改,是否保存?', mtConfirmation,[mbYes,mbNO],0)<>mrYES THEN exit;
   fn:=ExtractFilePath(Application.ExeName)+'TjpgByDltjy.jpg';
   jpg:=TJPEGImage.Create;
   try
       jpg.Assign(image1.Picture.Bitmap);
       jpg.CompressionQuality:=5;
       jpg.Compress;
       jpg.SaveToFile(fn);
   finally
       jpg.Free;
   end;
   ModifyPic(NodeData(TreeView1.Selected.Data).ID,fn);        //剪贴转JPG后保存
   DeleteFile(fn);
end;

procedure TForm1.PasteFromClipBoard;
var
    jpg:TJPEGImage;
    fn :string;
    bmp:TBitMap;
begin
    fn:=ExtractFilePath(Application.ExeName)+'TjpgByDltjy.jpg';
    if ClipBoard.HasFormat(CF_PICTURE) THEN
    begin
        image1.Picture.Assign(ClipBoard);
        {f (Image1.Picture.Graphic is TJPEGImage) then showmessage('TJPEGImage')
        else if (Image1.Picture.Graphic is TBitMap) then showmessage('TBitMap')
        else if (Image1.Picture.Graphic is TMetaFile) then showmessage('emf')
        else showmessage('other'); }
        IF messagedlg('图片已经修改,是否保存?', mtConfirmation,[mbYes,mbNO],0)<>mrYES THEN exit;
        if (image1.Picture.Graphic is TBitMap) then begin
            jpg:=TJPEGImage.Create;           //粘贴转JPG后保存
            try
                jpg.Assign(image1.Picture.Bitmap);
                jpg.CompressionQuality:=70;
                jpg.Compress;
                jpg.SaveToFile(fn);
            finally
                jpg.Free;
            end;
        end else if (image1.Picture.Graphic is TJPEGImage) then begin
            image1.Picture.SaveToFile(fn);
        end else if (image1.Picture.Graphic is TMetaFile) then begin
            bmp:=TBitMap.Create;
            jpg:=TJPEGImage.Create;
            try
                bmp.Width:=image1.Picture.Width;
                bmp.Height:=image1.Picture.Height;
                bmp.Canvas.Draw(0,0,image1.Picture.Metafile);
                jpg.Assign(bmp);
                jpg.CompressionQuality:=70;
                jpg.Compress;
                jpg.SaveToFile(fn);
            finally
                bmp.Free;
                jpg.Free;
            end;
        end else begin
            messagedlg('剪贴板中没有图片或者不是有效的图片格式!',mtWarning,[mbOK],0);
            Exit;
        end;
        ModifyPic(NodeData(TreeView1.Selected.Data).ID,fn);
        DeleteFile(fn);
    end;
end;

procedure TForm1.CutMenuClick(Sender: TObject);
begin
   if PageControl1.ActivePage<>TreeTab then PageControl1.ActivePage:=TreeTab;
   if (TreeView1.Selected=nil) or (TreeView1.Selected.ImageIndex<>0) then
   begin
       messagedlg('没有图片可以剪贴!',mtWarning,[mbOK],0);
       exit;
   end;
   CutToClipBoard;
end;

procedure TForm1.CopyMenuClick(Sender: TObject);
begin
   if PageControl1.ActivePage<>TreeTab then PageControl1.ActivePage:=TreeTab;
   if (TreeView1.Selected=nil) or (TreeView1.Selected.ImageIndex<>0) then
   begin
       messagedlg('没有图片可以复制!',mtWarning,[mbOK],0);
       exit;
   end;
   CopyToClipBoard;
end;

procedure TForm1.PasteMenuClick(Sender: TObject);
begin
   if PageControl1.ActivePage<>TreeTab then PageControl1.ActivePage:=TreeTab;
   if (TreeView1.Selected=nil) or (TreeView1.Selected.ImageIndex<>0) then
   begin
       //messagedlg('不能把图片粘贴在文件夹上!',mtWarning,[mbOK],0);
       exit;
   end;
   PasteFromClipBoard;
end;

function TForm1.GetPicOrFolderCount(m: integer): integer;  //取目录或文件数m=0返回文件数,m=1反回目录数
var
   query:TADOQuery;
   ql   :string;
begin
   Case m of
      0 : ql:='select ID From PData where Folder=0' ;
      1 : ql:='select ID From PData where Folder<>0' ;
   end;
   query:=TADOQuery.Create(self);
   try
       query.Connection:=ADOConnection1;
       query.Close;
       query.SQL.Clear;
       query.SQL.Add(ql);
       query.Open;
       result:=query.RecordCount;
       query.Close;
   finally
       query.Free;
   end;
end;

procedure TForm1.ImportFromDir(Node: TTreeNode);   //从目录导入
var
   pic     :integer;
   S       :TSearchRec;
   pnode   :NodeData;
   anode   :TTreeNode;      //图片节点
   mlnode  :TTreeNode;     //目录节点
   Firsted :boolean;
begin
   application.ProcessMessages;
   if aviform.stop then exit;
   //IF copy(aDir,length(aDir),1)<>'\' then aDir:=aDir+'\';
   //showmessage(GetCurrentDir);
   Firsted:=true;
   mlnode:=node;
   pic:=FindFirst('*.*',faAnyFile,s);    //查找*.jpg ,*.bmp
   while pic=0 do begin
       Application.ProcessMessages;
       if AviForm.stop then break;
       if (S.Attr and faDirectory)=0 then
       begin
          if (lowercase(ExtractFileExt(s.Name))='.jpg') or (lowercase(ExtractFileExt(s.Name))='.bmp') then
          begin
              AviForm.Label1.Caption:=s.Name;
              if Firsted then
              begin
                  new(pnode);                                                     //目录
                  pnode.ID:=GetMaxID+1;
                  pnode.Caption:=ExtractFileName(GetCurrentDir);
                  Pnode.Password:='';
                  mlnode:=TreeView1.Items.AddChildObject(node,pnode.Caption,pnode);
                  SaveFolder(NodeData(node.Data).ID,mlnode);
                  mlnode.ImageIndex:=1;
                  mlnode.SelectedIndex:=1;
                  Firsted:=false;
              end;

              new(Pnode);                                                        //文件
              pnode.ID:=GetMaxID+1;
              pnode.Caption:=Copy(s.Name,1,length(s.Name)-4);
              Pnode.Password:='';
              anode:=TreeView1.Items.AddChildObject(mlnode,pnode.Caption,pnode);
              SavePicture(NodeData(mlnode.Data).ID,anode,s.Name);
              anode.ImageIndex:=0;
              anode.SelectedIndex:=0;
          end;
       end;
       pic:=FindNext(s);
   end;

   IF Aviform.stop then begin
       FindClose(s);
       exit;
    end;

   pic:=FindFirst('*.*',faAnyFile,s); //查找目录
   while pic=0 do begin
       application.ProcessMessages;
       if aviform.stop then break;
       if ((s.Attr and faDirectory)<>0) and (s.Name<>'.') and (s.Name<>'..') then
       begin
           {new(pnode);
           pnode.ID:=GetMaxID+1;
           Pnode.Caption:=s.Name;     //????????
           pnode.Password:='';
           anode:=TreeView1.Items.AddChildObject(node,pnode.Caption,pnode);
           SaveFolder(NodeData(node.Data).ID,anode);
           anode.ImageIndex:=1;
           anode.SelectedIndex:=1; }
           ChDir(s.Name);
           ImportFromDir(mlnode);
           ChDir('..');
       end;
       pic:=FindNext(s);
   end;  
   FindClose(s);
end;

procedure TForm1.InFolderMenuClick(Sender: TObject);
var
  dir:string;
  //currentdir:string;
begin
   if PageControl1.ActivePage<>TreeTab then PageControl1.ActivePage:=TreeTab;
   if (TreeView1.Selected=nil) then
   begin
       messagedlg('必须先选择一个目录,以便导入图片!',mtError,[mbOK],0);
       Exit;
   end;
   if TreeView1.Selected.ImageIndex=0 then
      if TreeView1.Selected.Parent<>nil then TreeView1.Selected.Parent.Selected:=True
      else TreeView1.Selected:=nil;
   if not selectDirectory('选择图片目录:','',Dir) then exit;
   //showmessage(dir);
   Screen.Cursor:=crHourGlass;
   AviForm:=TAviForm.Create(self);
   AviForm.Caption:='正在导入图片,请等待...';
   AviForm.Label1.Caption:='';
   aviform.Label1.Visible:=true;
   AviForm.stop:=False;
   AviForm.Button1.Enabled:=True;
   AviForm.Animate1.CommonAVI:=aviCopyFiles;
   AviForm.Animate1.Active:=True;
   AviForm.Show;
   TreeView1.Items.BeginUpdate;
   //currentdir:=GetCurrentDir();
   ChDir(Dir);
   Try
   ImportFromDir(TreeView1.Selected);
   TreeView1.CustomSort(@MyCustomSortProc,0);
   finally
      AviForm.Close;
      AviForm.Free;
      TreeView1.Items.EndUpdate;
      Screen.Cursor:=crDefault;
   end;
   Statusbar1.Panels[2].Text:=intToStr(GetPicOrFolderCount(1));
   Statusbar1.Panels[4].Text:=intToStr(GetPicOrFolderCount(0));
end;

procedure TForm1.DelAddBookMark(ID: Integer;bm: Boolean);       //删除添加书签
var                                           //true添加书签,False删除书签
  query:TADOQuery;
begin
   query:=TADOQuery.Create(self);
   try
       query.Connection:=ADOConnection1;
       query.Close;
       query.SQL.Clear;
       query.SQL.Add('select * from PData where ID='+intToStr(ID));
       Query.Open;
       query.First;
       Query.Edit;
       query.FieldByName('BMark').AsBoolean:=bm;
       query.Post;
       query.Close;
   finally
       query.Free;
   end;
end;

procedure TForm1.AddBookMarkMenuClick(Sender: TObject);
begin
    if pagecontrol1.ActivePage<>TreeTab then PageControl1.ActivePage:=TreeTab;
    if (TreeView1.Selected=nil) or (TreeView1.Selected.ImageIndex<>0) then exit;
    DelAddBookMark(NodeData(TreeView1.Selected.Data).ID,true);
    TreeView2.Items.AddObject(nil,Treeview1.Selected.Text,TreeView1.Selected.Data);
end;

procedure TForm1.PrintMenuClick(Sender: TObject);
var
   image:Timage;
begin
  // if PageControl1.ActivePage<>TreeTab then PageControl1.ActivePage:=TreeTab;
   IF ((TreeView1.Selected<>nil) and (TreeView1.Selected.ImageIndex=0))
      or (TreeView2.Selected<>nil) or (TreeView3.Selected<>nil) then
   begin
       if (ZoomOut=1.0) and (ZoomIn=1.0) then image:=Image1 else image:=image2;
       PrintPicture(Image,1);
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);    //查找
var
   i:integer;
begin
   if Edit1.Text='' then exit;
   Button1.Enabled:=false;
   TreeView3.Items.Clear;
   for i:=0 to TreeView1.Items.Count-1 do
   begin
       if (pos(LowerCase(Edit1.Text),LowerCase(TreeView1.Items.Item[i].Text))<>0) and (TreeView1.Items.Item[i].ImageIndex=0) then
           TreeView3.Items.AddObject(nil,TreeView1.Items.Item[i].Text,TreeView1.Items.Item[i].Data);
   end;
   Button1.Enabled:=True;
end;

procedure TForm1.TreeView2DblClick(Sender: TObject);
var
   i:integer;
begin
   if TreeView2.Selected=nil then exit;
   for i:=0 to TreeView1.Items.Count-1 do
   begin
       if NodeData(TreeView2.Selected.Data).ID=NodeData(TreeView1.Items.Item[i].Data).ID then
       begin
           PageControl1.ActivePage:=TreeTab;
           TreeView1.Items.Item[i].Expanded:=true;
           TreeView1.Items.Item[i].Selected:=true;
           break;
       end;
   end;
end;

procedure TForm1.TreeView3DblClick(Sender: TObject);
var
   i:integer;
begin
   if TreeView3.Selected=nil then exit;
   for i:=0 to TreeView1.Items.Count-1 do
   begin
       if NodeData(TreeView3.Selected.Data).ID=NodeData(TreeView1.Items.Item[i].Data).ID then
       begin
           PageControl1.ActivePage:=TreeTab;
           TreeView1.Items.Item[i].Expanded:=true;
           TreeView1.Items.Item[i].Selected:=true;
           break;
       end;
   end;
end;

procedure TForm1.DelPMenuClick(Sender: TObject);
begin
     if TreeView2.Selected=nil then exit;
     If messagedlg('确认删除书签吗?',mtInformation,[mbYES,mbNO],0)<>mrYes then exit;
     DelAddBookMark(NodeData(TreeView2.Selected.Data).ID,False);
     TreeView2.Selected.Delete;
end;

procedure TForm1.AllDelPMenuClick(Sender: TObject);
var
   i:integer;
begin
    if TreeView2.Items.Count=0 then exit;
    If messagedlg('确认删除所有书签吗?',mtInformation,[mbYES,mbNO],0)<>mrYes then exit;
    for i:=0 to TreeView2.Items.Count-1 do
        DelAddBookMark(NodeData(TreeView2.Items.Item[i].Data).ID,false);
    TreeView2.Items.Clear;
end;

procedure TForm1.ToTreeTabPMenuClick(Sender: TObject);
begin
   TreeView2DblClick(sender);
end;

procedure TForm1.TreeView2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  node:TTreenode;
begin
   if (Button<>mbRight) then exit;
   Node:=TreeView2.GetNodeAt(x,y);
   if Node<>nil then Node.Selected:=True;
   if node<>nil then
   begin
       DelPMenu.Enabled:=true;
       AllDelPMenu.Enabled:=true;
       ToTreetabPMenu.Enabled:=True;
   end else begin
       DelPMenu.Enabled:=false;
       AllDelPMenu.Enabled:=true;
       ToTreetabPMenu.Enabled:=false;
   end;
end;

procedure TForm1.SearchToTreeTabPMenuClick(Sender: TObject);
begin
   TreeView3DblClick(sender);
end;

procedure TForm1.SearchToBMpmenuClick(Sender: TObject);
begin
    if (TreeView3.Selected=nil) then exit;
    DelAddBookMark(NodeData(TreeView3.Selected.Data).ID,true);
    TreeView2.Items.AddObject(nil,Treeview3.Selected.Text,TreeView3.Selected.Data);
end;

procedure TForm1.TreeView3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
   node:TTreeNode;
begin
    IF (Button<>mbRight) then exit;
    node:=TreeView3.GetNodeAt(x,y);
    IF Node<>nil then Node.Selected:=True;
    if node<>nil then
    begin
        searchToTreeTabpmenu.Enabled:=true;
        searchToBMpmenu.Enabled:=true;
    end else begin
        searchToTreeTabpmenu.Enabled:=false;
        searchToBMpmenu.Enabled:=false;
    end;
end;

procedure TForm1.TreeView2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if TreeView2.Selected=nil then exit;
   if key=VK_Delete then DelPMenuClick(sender);
end;

procedure TForm1.TreeView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if TreeView1.Selected=nil then exit;
   if key=VK_F2 then begin
       RenameMenuClick(sender);
       exit;
   end;
   if Key=VK_Delete then  DelMenuClick(sender);
end;

procedure TForm1.TreeView1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
   node:TTreenode;
begin
   IF (Button<>mbRight) then exit;
   Node:=TreeView1.GetNodeAt(x,y);
   if node<>nil then Node.Selected:=true ;
end;

procedure TForm1.ImagePopupMenuPopup(Sender: TObject);
var
  i:integer;
begin
   if ((TreeView1.Selected=nil) or (Treeview1.Selected.ImageIndex<>0)) and
      (TreeView2.Selected=nil) and (TreeView3.Selected=nil) then begin
       for i:=0 to ImagePopupmenu.Items.Count-1 do
            ImagePopupMenu.Items.Items[i].Enabled:=False;
   end else begin
        for i:=0 to ImagePopupmenu.Items.Count-1 do
            ImagePopupMenu.Items.Items[i].Enabled:=true;
   end;
end;

procedure TForm1.TreePopupMenuPopup(Sender: TObject);
var
   i:integer;
begin
    if TreeView1.Selected=nil then
    begin
       for i:=0 to TreePopupMenu.Items.Count-1 do
           TreePopupMenu.Items.Items[i].Enabled:=false;
       exit;
    end;
    if TreeView1.Selected.ImageIndex=0 then
    begin
        NewMLPopupMenu.Enabled:=true;
        NewSpMenu.Enabled:=false;
        MLPassPMenu.Enabled:=false;
        AddPicPMenu.Enabled:=false;
        ImportPMenu.Enabled:=false;
        SaveASPMenu.Enabled:=true;
        BMPMenu.Enabled:=true;
        ReNPMenu.Enabled:=true;
        NotePopupMenu.Enabled:=true;
        DelPopupMenu.Enabled:=true;
    end else
    begin
        NewMLPopupMenu.Enabled:=true;
        NewSpMenu.Enabled:=true;
        MLPassPMenu.Enabled:=true;
        AddPicPMenu.Enabled:=true;
        ImportPMenu.Enabled:=true;
        SaveASPMenu.Enabled:=false;
        BMPMenu.Enabled:=false;
        ReNPMenu.Enabled:=true;
        NotePopupMenu.Enabled:=true;
        DelPopupMenu.Enabled:=true;
    end;
end;

procedure TForm1.TreeView1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
   node:TTreeNode;
   NBPixels:integer;
   Info:Tscrollinfo;
begin
   Accept:=True;
   node:=Treeview1.GetNodeAt(x,y);
   if node=nil then exit;
   if (node.ImageIndex=1) and (not node.Expanded) then node.Expanded:=True;
   GetScrollInfo(Treeview1.Handle,SB_VERT,Info) ;
   if Info.nMin=Info.nMax then exit;
   NBPixels:=abs(Treeview1.Font.Height);
   if y<NBPixels then begin
       TreeView1.Perform(WM_VSCROLL,SB_LINEUP,0);
       Treeview1.Refresh;
   end;
   if (y>(TreeView1.Height-NBPixels-16))  then
   begin
       Treeview1.Perform(WM_VSCROLL,SB_LINEDOWN,0);
   end;

end;

procedure TForm1.TreeView1DragDrop(Sender, Source: TObject; X, Y: Integer);
var
   tnode:TTreeNode;
   snode:TTreeNode;
begin
   iF TreeView1.Selected=nil then exit;
   tnode:=TreeView1.GetNodeAt(x,y);
   snode:=TreeView1.Selected;
   if (tnode=nil) or (tnode.ImageIndex=0) or (tnode=snode.Parent) then exit;
   snode.MoveTo(tnode,naAddChild);
   ModifyParent(nodedata(snode.Data).ID,nodedata(tnode.Data).ID);
end;

procedure TForm1.ModifyParent(sourceID, ParentID: Integer);
var
   query:TADOQuery;
begin
    query:=TADOQuery.Create(self);
    with query do begin
        connection:=ADOConnection1;
        close;
        sql.Clear;
        sql.Add('select * from PData where ID='+inttostr(sourceID));
        Open;
        edit;
        FieldByName('PID').AsInteger:=ParentID;
        POST;
        Free;
    end;
end;

procedure TForm1.WMDropFiles(var msg: TWMDROPFILES);
var
   count     :integer;
   buffer    :array[0..255]of char;
   i         :integer;
   pnode     :NodeData;
   node      :TTreeNode;
   fn        :string;
begin
   //showmessage('进来啰!!');
   if pageControl1.ActivePage<>TreeTab then PageControl1.ActivePage:=TreeTab;
   if Treeview1.Selected=nil then
   begin
       messagedlg('必须先选择一个目录,以便添加图片!',mtWarning,[mbOK],0);
       Exit;
   end;
   if TreeView1.Selected.ImageIndex=0 then  TreeView1.Selected.Parent.Selected:=true;
   count:=DragQueryFile(msg.Drop,$FFFFFFFF,buffer,255);
   Screen.Cursor:=crHourGlass;
   TreeView1.Items.BeginUpdate;
   aviform:=Taviform.Create(self);
   aviform.Button1.Enabled:=true;
   aviform.Label1.Caption:='';
   aviform.Label1.Visible:=true;
   aviform.stop:=false;
   AviForm.Caption:='正在添加图片,请等待...';
   AviForm.Animate1.CommonAVI:=aviCopyFiles;
   aviform.Animate1.Active:=true;
   aviform.Show;
   try
      for i:=0 to count-1 do begin
         application.ProcessMessages;
         if aviform.stop then break;
         DragQueryFile(msg.Drop,i,buffer,255);
         fn:=StrPas(buffer);
         if (LowerCase(ExtractFileExt(fn))='.jpg') or (LowerCase(ExtractFileExt(fn))='.bmp') then
         begin
            aviform.Label1.Caption:=ExtractFileName(fn);
            new(pnode);
            pnode.ID:=GetMaxID+1;
            Pnode.Password:='';
            pnode.Caption:=copy(ExtractFileName(fn),1,Length(ExtractFileName(fn))-4);
            node:=TreeView1.Items.AddChildObject(TreeView1.Selected,pnode.Caption,pnode);
            node.ImageIndex:=0;
            node.SelectedIndex:=0;
            savePicture(NodeData(TreeView1.Selected.Data).ID,node,fn) ;
         end;
      end;
      DragFinish(msg.Drop);
      aviform.Animate1.Active:=false;
      AviForm.Close;
   finally
      Screen.Cursor:=crDefault;
      TreeView1.Items.EndUpdate;
      AviFORM.Free;
   end;
    Statusbar1.Panels[2].Text:=intToStr(GetPicOrFolderCount(1));
    Statusbar1.Panels[4].Text:=intToStr(GetPicOrFolderCount(0));
end;

procedure TForm1.PrintPicture(Image: Timage;a:integer);
var
   pstream:TmemoryStream;
begin
   pstream:=TMemoryStream.Create;
   image.Picture.Graphic.SaveToStream(pstream);
   pstream.Position:=0;
   try
      case a of
         1:begin


           end;
         2:begin

           end;
         3:begin

           end;
      end;
   finally
       pstream.Free;
   end;
end;

end.
