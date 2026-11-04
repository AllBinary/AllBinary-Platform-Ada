--  Generated Code Do Not Modify


with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;

package body org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package is

   subtype AbFile_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access;
   function "=" (Left, Right : AbFile_Access) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array;
   function "=" (Left, Right : AbFile_Access_Array) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access;
   function "=" (Left, Right : AbFile_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array;
   function "=" (Left, Right : AbFile_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbFile_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   function "=" (Left, Right : AbPath_Access) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   function "=" (Left, Right : AbPath_Access_Array) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   function "=" (Left, Right : AbPath_Access_Array_Access) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   function "=" (Left, Right : AbPath_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbPath_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
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
      Java_Result : constant AbFile_Access := getAbFile (contextName => contextName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAbFile;

   procedure getAbPath (contextName : Unbounded_String) is
      Java_Result : constant AbPath_Access := getAbPath (contextName => contextName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAbPath;

   procedure getFileName (contextName : Unbounded_String) is
      Java_Result : constant Unbounded_String := getFileName (contextName => contextName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFileName;

end org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package;


