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


package body org.allbinary.game.input.PlatformKeyFactory_Package is

   procedure Initialize_Fields (This : in out PlatformKeyFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PlatformKeyFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PlatformKeyFactory_Access is
      This : constant PlatformKeyFactory_Access := new PlatformKeyFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return PlatformKeyFactory_Access is
   begin
        if (PlatformKeyFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            PlatformKeyFactory_Package.instance := PlatformKeyFactory_Package.Create;
        end if;
        return PlatformKeyFactory_Access (PlatformKeyFactory_Package.instance);
   end getInstance;

   function getString (This : in out PlatformKeyFactory; keyCode : Integer) return Unbounded_String is
   begin
        return PCGameKey_Package.getString (keyCode);
   end getString;

   function isSubmission (This : in out PlatformKeyFactory; input : Input_Access) return Boolean is
   begin
        return PCKeyFactory_Package.getInstance.isSubmission (input);
   end isSubmission;

   function isDelete (This : in out PlatformKeyFactory; input : Input_Access) return Boolean is
   begin
        return PCKeyFactory_Package.getInstance.isDelete (input);
   end isDelete;

   function isBackSpace (This : in out PlatformKeyFactory; input : Input_Access) return Boolean is
   begin
        return PCKeyFactory_Package.getInstance.isBackSpace (input);
   end isBackSpace;

   function isUp (This : in out PlatformKeyFactory; input : Input_Access) return Boolean is
   begin
        return PCKeyFactory_Package.getInstance.isUp (input);
   end isUp;

   function isDown (This : in out PlatformKeyFactory; input : Input_Access) return Boolean is
   begin
        return PCKeyFactory_Package.getInstance.isDown (input);
   end isDown;

   function isEnter (This : in out PlatformKeyFactory; input : Input_Access) return Boolean is
   begin
        return PCKeyFactory_Package.getInstance.isEnter (input);
   end isEnter;

   function isLeft (This : in out PlatformKeyFactory; input : Input_Access) return Boolean is
   begin
        return PCKeyFactory_Package.getInstance.isLeft (input);
   end isLeft;

   function isRight (This : in out PlatformKeyFactory; input : Input_Access) return Boolean is
   begin
        return PCKeyFactory_Package.getInstance.isRight (input);
   end isRight;

   procedure getInstance is
      Java_Result : constant PlatformKeyFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getString (This : in out PlatformKeyFactory; keyCode : Integer) is
      Java_Result : constant Unbounded_String := PlatformKeyFactory'Class (This).getString (keyCode);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getString;

   procedure isSubmission (This : in out PlatformKeyFactory; input : Input_Access) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isSubmission (input);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSubmission;

   procedure isDelete (This : in out PlatformKeyFactory; input : Input_Access) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isDelete (input);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDelete;

   procedure isBackSpace (This : in out PlatformKeyFactory; input : Input_Access) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isBackSpace (input);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isBackSpace;

   procedure isUp (This : in out PlatformKeyFactory; input : Input_Access) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isUp (input);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isUp;

   procedure isDown (This : in out PlatformKeyFactory; input : Input_Access) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isDown (input);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDown;

   procedure isEnter (This : in out PlatformKeyFactory; input : Input_Access) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isEnter (input);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isEnter;

   procedure isLeft (This : in out PlatformKeyFactory; input : Input_Access) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isLeft (input);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isLeft;

   procedure isRight (This : in out PlatformKeyFactory; input : Input_Access) is
      Java_Result : constant Boolean := PlatformKeyFactory'Class (This).isRight (input);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRight;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.input.PlatformKeyFactory_Package;


