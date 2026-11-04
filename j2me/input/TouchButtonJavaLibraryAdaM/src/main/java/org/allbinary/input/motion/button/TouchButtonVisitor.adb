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


with org.allbinary.input.motion.button.TouchButtonInput_Package; use org.allbinary.input.motion.button.TouchButtonInput_Package;

package body org.allbinary.input.motion.button.TouchButtonVisitor_Package is

   subtype TouchButtonInput_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access;
   function "=" (Left, Right : TouchButtonInput_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array;
   function "=" (Left, Right : TouchButtonInput_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access;
   function "=" (Left, Right : TouchButtonInput_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonInput_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   procedure Initialize_Fields (This : in out TouchButtonVisitor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TouchButtonVisitor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TouchButtonVisitor_Access is
      This : constant TouchButtonVisitor_Access := new TouchButtonVisitor;
   begin
      TouchButtonVisitor_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure process (This : in out TouchButtonVisitor; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; string_Id : Unbounded_String) is
      touchButtonInput : constant TouchButtonInput_Access := TouchButtonInput_Access (touchButtonInput_Param);
   begin
        null;
   end process;

end org.allbinary.input.motion.button.TouchButtonVisitor_Package;


