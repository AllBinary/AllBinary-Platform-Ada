--  Generated Code Do Not Modify



package body org.platform.OpenGLResources_Package is

   procedure Initialize_Fields (This : in out OpenGLResources'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLResources'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLResources_Access is
      This : constant OpenGLResources_Access := new OpenGLResources;
   begin
      OpenGLResources_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return OpenGLResources_Access is
   begin
        return OpenGLResources_Package.instance;
   end getInstance;

   procedure init (This : in out OpenGLResources) is
   begin
        null;
   end init;

   function isExcluded (This : in out OpenGLResources; name : Unbounded_String) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isExcluded;

   function getIdentifier (This : in out OpenGLResources; name : Unbounded_String; defType : Unbounded_String; defPackage : Unbounded_String) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end getIdentifier;

   --  throws Exception
   function openRawResource (This : in out OpenGLResources; id : Integer) return InputStream_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end openRawResource;

   --  throws Exception
   function openRawResourceFromName (This : in out OpenGLResources; resourceName : Unbounded_String) return InputStream_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end openRawResourceFromName;

   --  throws Exception
   function getResourceAsStream (This : in out OpenGLResources; resourceName : Unbounded_String) return InputStream_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getResourceAsStream;

   function getPackageName (This : in out OpenGLResources) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return Null_Unbounded_String;
   end getPackageName;

   procedure isExcluded (This : in out OpenGLResources; name : Unbounded_String) is
      Java_Result : constant Boolean := OpenGLResources'Class (This).isExcluded (name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isExcluded;

   procedure getIdentifier (This : in out OpenGLResources; name : Unbounded_String; defType : Unbounded_String; defPackage : Unbounded_String) is
      Java_Result : constant Integer := OpenGLResources'Class (This).getIdentifier (name, defType, defPackage);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getIdentifier;

   procedure openRawResource (This : in out OpenGLResources; id : Integer) is
      Java_Result : constant InputStream_Access := OpenGLResources'Class (This).openRawResource (id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end openRawResource;

   procedure openRawResourceFromName (This : in out OpenGLResources; resourceName : Unbounded_String) is
      Java_Result : constant InputStream_Access := OpenGLResources'Class (This).openRawResourceFromName (resourceName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end openRawResourceFromName;

   procedure getResourceAsStream (This : in out OpenGLResources; resourceName : Unbounded_String) is
      Java_Result : constant InputStream_Access := OpenGLResources'Class (This).getResourceAsStream (resourceName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getResourceAsStream;

begin
   null;
   instance := OpenGLResources_Package.Create;

end org.platform.OpenGLResources_Package;


