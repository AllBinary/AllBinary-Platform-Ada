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


with org.allbinary.input.motion.button.BaseTouchInput_Package; use org.allbinary.input.motion.button.BaseTouchInput_Package;
with org.allbinary.input.motion.button.BaseTouchInput_Package_References;
with org.allbinary.input.motion.button.BaseTouchInput_Package;

package body org.allbinary.input.motion.button.NoButtonsTouchInputFactory_Package is

   subtype BaseTouchInput_Access is org.allbinary.input.motion.button.BaseTouchInput_Package_References.BaseTouchInput_Access;
   function "=" (Left, Right : BaseTouchInput_Access) return Boolean renames org.allbinary.input.motion.button.BaseTouchInput_Package_References."=";
   subtype BaseTouchInput_Access_Array is org.allbinary.input.motion.button.BaseTouchInput_Package_References.BaseTouchInput_Access_Array;
   function "=" (Left, Right : BaseTouchInput_Access_Array) return Boolean renames org.allbinary.input.motion.button.BaseTouchInput_Package_References."=";
   subtype BaseTouchInput_Access_Array_Access is org.allbinary.input.motion.button.BaseTouchInput_Package_References.BaseTouchInput_Access_Array_Access;
   function "=" (Left, Right : BaseTouchInput_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.BaseTouchInput_Package_References."=";
   subtype BaseTouchInput_Access_Array_Access_Array is org.allbinary.input.motion.button.BaseTouchInput_Package_References.BaseTouchInput_Access_Array_Access_Array;
   function "=" (Left, Right : BaseTouchInput_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.BaseTouchInput_Package_References."=";
   subtype BaseTouchInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.BaseTouchInput_Package_References.BaseTouchInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseTouchInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.BaseTouchInput_Package_References."=";
   procedure Initialize_Fields (This : in out NoButtonsTouchInputFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NoButtonsTouchInputFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NoButtonsTouchInputFactory_Access is
      This : constant NoButtonsTouchInputFactory_Access := new NoButtonsTouchInputFactory;
   begin
      NoButtonsTouchInputFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return BaseTouchInput_Access is
   begin
        return BaseTouchInput_Access (NoButtonsTouchInputFactory_Package.instance);
   end getInstance;

begin
   null;
   instance := BaseTouchInput_Package.Create;

end org.allbinary.input.motion.button.NoButtonsTouchInputFactory_Package;


