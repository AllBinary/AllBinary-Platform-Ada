--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


with org.allbinary.globals.Globals_Package; use org.allbinary.globals.Globals_Package;
with org.allbinary.init.ClassLoader_Package; use org.allbinary.init.ClassLoader_Package;

package body org.allbinary.init.NoLicense_Package is

   package Globals_Package renames Standard.org.allbinary.globals.Globals_Package;
   subtype ClassLoader_Access is org.allbinary.init.ClassLoader_Package_References.ClassLoader_Access;
   function "=" (Left, Right : ClassLoader_Access) return Boolean renames org.allbinary.init.ClassLoader_Package_References."=";
   subtype ClassLoader_Access_Array is org.allbinary.init.ClassLoader_Package_References.ClassLoader_Access_Array;
   function "=" (Left, Right : ClassLoader_Access_Array) return Boolean renames org.allbinary.init.ClassLoader_Package_References."=";
   subtype ClassLoader_Access_Array_Access is org.allbinary.init.ClassLoader_Package_References.ClassLoader_Access_Array_Access;
   function "=" (Left, Right : ClassLoader_Access_Array_Access) return Boolean renames org.allbinary.init.ClassLoader_Package_References."=";
   subtype ClassLoader_Access_Array_Access_Array is org.allbinary.init.ClassLoader_Package_References.ClassLoader_Access_Array_Access_Array;
   function "=" (Left, Right : ClassLoader_Access_Array_Access_Array) return Boolean renames org.allbinary.init.ClassLoader_Package_References."=";
   subtype ClassLoader_Access_Array_Access_Array_Access is org.allbinary.init.ClassLoader_Package_References.ClassLoader_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ClassLoader_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.init.ClassLoader_Package_References."=";
   procedure Initialize_Fields (This : in out NoLicense'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NoLicense'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NoLicense_Access is
      This : constant NoLicense_Access := new NoLicense;
   begin
      NoLicense_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure init (classLoader_Param : access ClassLoader_Package.ClassLoader'Class; pathString : Unbounded_String) is
      classLoader : constant ClassLoader_Access := ClassLoader_Access (classLoader_Param);
   begin
        Globals_Package.init (classLoader, pathString);
   end init;

end org.allbinary.init.NoLicense_Package;


