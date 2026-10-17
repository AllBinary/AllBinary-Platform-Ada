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


package body org.allbinary.game.input.TestInputExample_Package is

   procedure Initialize_Fields (This : in out TestInputExample'Class) is
   begin
      null;
      This.testValue := 0;
   end Initialize_Fields;

   procedure Initialize (This : in out TestInputExample'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TestInputExample_Access is
      This : constant TestInputExample_Access := new TestInputExample;
   begin
      Initialize (This.all);
      return This;
   end Create;


   procedure up (This : in out TestInputExample) is
   begin
        null;
   end up;

   procedure down (This : in out TestInputExample) is
   begin
        null;
   end down;

   procedure left (This : in out TestInputExample) is
   begin
        This.testValue := This.testValue + 1;
   end left;

   procedure right (This : in out TestInputExample) is
   begin
        This.testValue := This.testValue - 1;
   end right;

   procedure strafeLeft (This : in out TestInputExample) is
   begin
        null;
   end strafeLeft;

   procedure strafeRight (This : in out TestInputExample) is
   begin
        null;
   end strafeRight;

   procedure paint (This : in out TestInputExample; graphics : Graphics_Access) is
   begin
        null;
   end paint;

   procedure paintThreed (This : in out TestInputExample; graphics : Graphics_Access) is
   begin
        null;
   end paintThreed;

end org.allbinary.game.input.TestInputExample_Package;


