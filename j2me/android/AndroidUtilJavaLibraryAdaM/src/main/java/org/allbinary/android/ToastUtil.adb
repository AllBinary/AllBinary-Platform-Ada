--  Generated Code Do Not Modify


with android.widget.Toast_Package; use android.widget.Toast_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package body org.allbinary.android.ToastUtil_Package is

   package Toast_Package renames Standard.android.widget.Toast_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
      ToastUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ToastUtil_Access is
   begin
        return ToastUtil_Package.instance;
   end getInstance;

   procedure makeToast (This : in out ToastUtil; view_Param : access View_Package.View'Class; context_Param : access Context_Package.Context'Class; message : Unbounded_String; time : Integer) is
      view : constant View_Access := View_Access (view_Param);
      context : constant Context_Access := Context_Access (context_Param);
   begin
        --  Java nested class MakeToast: move it to its own package
        view.post (MakeToast_Package.Create (message));
   end makeToast;

begin
   null;
   instance := ToastUtil_Package.Create;

end org.allbinary.android.ToastUtil_Package;


