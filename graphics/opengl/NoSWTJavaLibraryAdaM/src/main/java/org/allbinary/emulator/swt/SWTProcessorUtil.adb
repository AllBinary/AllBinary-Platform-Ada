-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


with org.allbinary.emulator.swt.SWTProcessor_Package; use org.allbinary.emulator.swt.SWTProcessor_Package;
with org.eclipse.swt.widgets.Display_Package;
with org.allbinary.emulator.swt.SWTProcessor_Package;

package body org.allbinary.emulator.swt.SWTProcessorUtil_Package is

   subtype SWTProcessor_Access is org.allbinary.emulator.swt.SWTProcessor_Package_References.SWTProcessor_Access;
   function "=" (Left, Right : SWTProcessor_Access) return Boolean renames org.allbinary.emulator.swt.SWTProcessor_Package_References."=";
   subtype SWTProcessor_Access_Array is org.allbinary.emulator.swt.SWTProcessor_Package_References.SWTProcessor_Access_Array;
   function "=" (Left, Right : SWTProcessor_Access_Array) return Boolean renames org.allbinary.emulator.swt.SWTProcessor_Package_References."=";
   subtype SWTProcessor_Access_Array_Access is org.allbinary.emulator.swt.SWTProcessor_Package_References.SWTProcessor_Access_Array_Access;
   function "=" (Left, Right : SWTProcessor_Access_Array_Access) return Boolean renames org.allbinary.emulator.swt.SWTProcessor_Package_References."=";
   subtype SWTProcessor_Access_Array_Access_Array is org.allbinary.emulator.swt.SWTProcessor_Package_References.SWTProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : SWTProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.emulator.swt.SWTProcessor_Package_References."=";
   subtype SWTProcessor_Access_Array_Access_Array_Access is org.allbinary.emulator.swt.SWTProcessor_Package_References.SWTProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SWTProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.emulator.swt.SWTProcessor_Package_References."=";
   procedure Initialize_Fields (This : in out SWTProcessorUtil'Class) is
   begin
      null;
      This.swtProcessor := SWTProcessor_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out SWTProcessorUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SWTProcessorUtil_Access is
      This : constant SWTProcessorUtil_Access := new SWTProcessorUtil;
   begin
      SWTProcessorUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return SWTProcessorUtil_Access is
   begin
        return SWTProcessorUtil_Access (SWTProcessorUtil_Package.instance);
   end getInstance;

begin
   null;
   instance := SWTProcessorUtil_Package.Create;

end org.allbinary.emulator.swt.SWTProcessorUtil_Package;


