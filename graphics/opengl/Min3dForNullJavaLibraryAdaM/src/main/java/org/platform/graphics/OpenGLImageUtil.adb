--  Generated Code Do Not Modify


package body org.platform.graphics.OpenGLImageUtil_Package is

   procedure Initialize_Fields (This : in out OpenGLImageUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLImageUtil'Class) is
   begin
      OpenGLImageUtilBase_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLImageUtil_Access is
      This : constant OpenGLImageUtil_Access := new OpenGLImageUtil;
   begin
      OpenGLImageUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLImageUtil_Access is
   begin
        return OpenGLImageUtil_Package.instance;
   end getInstance;

begin
   null;
   instance := OpenGLImageUtil_Package.Create;

end org.platform.graphics.OpenGLImageUtil_Package;


