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


with org.allbinary.debug.NoDebug_Package; use org.allbinary.debug.NoDebug_Package;
with org.allbinary.debug.DebugInterface_Package; use org.allbinary.debug.DebugInterface_Package;
with org.allbinary.debug.DebugInterface_Package;
with org.allbinary.debug.NoDebug_Package;

package body org.allbinary.debug.DebugFactory_Package is

   subtype DebugInterface_Access is org.allbinary.debug.DebugInterface_Package_References.DebugInterface_Access;
   function "=" (Left, Right : DebugInterface_Access) return Boolean renames org.allbinary.debug.DebugInterface_Package_References."=";
   subtype DebugInterface_Access_Array is org.allbinary.debug.DebugInterface_Package_References.DebugInterface_Access_Array;
   function "=" (Left, Right : DebugInterface_Access_Array) return Boolean renames org.allbinary.debug.DebugInterface_Package_References."=";
   subtype DebugInterface_Access_Array_Access is org.allbinary.debug.DebugInterface_Package_References.DebugInterface_Access_Array_Access;
   function "=" (Left, Right : DebugInterface_Access_Array_Access) return Boolean renames org.allbinary.debug.DebugInterface_Package_References."=";
   subtype DebugInterface_Access_Array_Access_Array is org.allbinary.debug.DebugInterface_Package_References.DebugInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DebugInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.debug.DebugInterface_Package_References."=";
   subtype DebugInterface_Access_Array_Access_Array_Access is org.allbinary.debug.DebugInterface_Package_References.DebugInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DebugInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.debug.DebugInterface_Package_References."=";
   procedure Initialize_Fields (This : in out DebugFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out DebugFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DebugFactory_Access is
      This : constant DebugFactory_Access := new DebugFactory;
   begin
      DebugFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return DebugInterface_Access is
   begin
        return DebugInterface_Access (NoDebug_Package.getInstance);
   end getInstance;

end org.allbinary.debug.DebugFactory_Package;


