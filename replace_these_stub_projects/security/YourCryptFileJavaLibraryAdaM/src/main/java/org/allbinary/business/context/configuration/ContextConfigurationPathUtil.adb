--  Generated Code Do Not Modify


package body org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package is

   procedure Initialize_Fields (This : in out ContextConfigurationPathUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ContextConfigurationPathUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ContextConfigurationPathUtil_Access is
      This : constant ContextConfigurationPathUtil_Access := new ContextConfigurationPathUtil;
   begin
      ContextConfigurationPathUtil_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getAbFile (contextName : Unbounded_String) return AbFile_Access is
   begin
        return null;
   end getAbFile;

   --  throws Exception
   function getAbPath (contextName : Unbounded_String) return AbPath_Access is
   begin
        return null;
   end getAbPath;

   --  throws Exception
   function getPath return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end getPath;

   function getFileName (contextName : Unbounded_String) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end getFileName;

   procedure getAbFile (contextName : Unbounded_String) is
      Java_Result : constant AbFile_Access := getAbFile (contextName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAbFile;

   procedure getAbPath (contextName : Unbounded_String) is
      Java_Result : constant AbPath_Access := getAbPath (contextName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAbPath;

   procedure getFileName (contextName : Unbounded_String) is
      Java_Result : constant Unbounded_String := getFileName (contextName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFileName;

end org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package;


