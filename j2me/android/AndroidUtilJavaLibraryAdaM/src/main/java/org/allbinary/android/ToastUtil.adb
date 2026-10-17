--  Generated Code Do Not Modify


package body org.allbinary.android.ToastUtil_Package is

   procedure Initialize_Fields (This : in out ToastUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out ToastUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ToastUtil_Access is
      This : constant ToastUtil_Access := new ToastUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return ToastUtil_Access is
   begin
        return ToastUtil_Package.instance;
   end getInstance;

   procedure makeToast (This : in out ToastUtil; view : View_Access; context : Context_Access; message : Unbounded_String; time : Integer) is
   begin
        --  Java nested class MakeToast: move it to its own package
        view.post (MakeToast_Package.Create (message));
   end makeToast;

   procedure getInstance is
      Java_Result : constant ToastUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := ToastUtil_Package.Create;

end org.allbinary.android.ToastUtil_Package;


