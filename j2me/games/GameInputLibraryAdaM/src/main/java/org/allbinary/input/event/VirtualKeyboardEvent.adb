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


package body org.allbinary.input.event.VirtualKeyboardEvent_Package is

   procedure Initialize_Fields (This : in out VirtualKeyboardEvent'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out VirtualKeyboardEvent'Class; anyType_Param : access Java_Object'Class) is
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        AllBinaryEventObject_Package.Initialize (This, anyType);
   end Initialize;

   function Create (anyType_Param : access Java_Object'Class) return VirtualKeyboardEvent_Access is
      This : constant VirtualKeyboardEvent_Access := new VirtualKeyboardEvent;
   begin
      VirtualKeyboardEvent_Package.Initialize (This.all, anyType_Param);
      return This;
   end Create;

end org.allbinary.input.event.VirtualKeyboardEvent_Package;


