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


package body org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package is

   procedure Initialize_Fields (This : in out VirtualKeyboardAPI1'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out VirtualKeyboardAPI1'Class; activity_Param : access Activity_Package.Activity'Class) is
      activity : constant Activity_Access := Activity_Access (activity_Param);
   begin
      VirtualKeyboard_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (activity_Param : access Activity_Package.Activity'Class) return VirtualKeyboardAPI1_Access is
      This : constant VirtualKeyboardAPI1_Access := new VirtualKeyboardAPI1;
   begin
      VirtualKeyboardAPI1_Package.Initialize (This.all, activity_Param);
      return This;
   end Create;

begin
   null;
   MIN_API := 1;
   MAX_API := 2;

end org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package;


