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


package body org.allbinary.android.input.VirtualKeyboardFactory_Package is

   procedure Initialize_Fields (This : in out VirtualKeyboardFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out VirtualKeyboardFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return VirtualKeyboardFactory_Access is
      This : constant VirtualKeyboardFactory_Access := new VirtualKeyboardFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   procedure init (activity : Activity_Access) is
      SDK_VERSION : Integer;
   begin
        SDK_VERSION := AndroidInfoFactory_Package.getInstance.getVersion;
        if (SDK_VERSION) <= (2) then
            VirtualKeyboardFactory_Package.virtualKeyboard := VirtualKeyboardAPI1_Package.Create (activity);
        else
            VirtualKeyboardFactory_Package.virtualKeyboard := VirtualKeyboardAPI3_Package.Create (activity);
        end if;
   end init;

   function getInstance return VirtualKeyboard_Access is
   begin
        return VirtualKeyboardFactory_Package.virtualKeyboard;
   end getInstance;

   procedure getInstance is
      Java_Result : constant VirtualKeyboard_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   virtualKeyboard := VirtualKeyboard_Package.NULL_VIRTUAL_KEYBOARD;

end org.allbinary.android.input.VirtualKeyboardFactory_Package;


