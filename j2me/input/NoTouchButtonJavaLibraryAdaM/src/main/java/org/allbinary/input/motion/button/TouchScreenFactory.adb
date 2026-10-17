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


package body org.allbinary.input.motion.button.TouchScreenFactory_Package is

   procedure Initialize_Fields (This : in out TouchScreenFactory'Class) is
   begin
      null;
      This.multiTouch := False;
      This.touch := False;
      This.touchScreenType := TouchScreenTypesFactory_Package.getInstance.NOTOUCH;
   end Initialize_Fields;


   procedure Initialize (This : in out TouchScreenFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TouchScreenFactory_Access is
      This : constant TouchScreenFactory_Access := new TouchScreenFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInstance return TouchScreenFactory_Access is
   begin
        return TouchScreenFactory_Package.SINGLETON;
   end getInstance;

   function isMultiTouch (This : in out TouchScreenFactory) return Boolean is
   begin
        return This.multiTouch;
   end isMultiTouch;

   procedure setTouch (This : in out TouchScreenFactory; touch : Boolean) is
   begin
        null;
   end setTouch;

   function isTouch (This : in out TouchScreenFactory) return Boolean is
   begin
        return This.touch;
   end isTouch;

   function getTouchScreenType (This : in out TouchScreenFactory) return TouchScreenType_Access is
   begin
        return This.touchScreenType;
   end getTouchScreenType;

   procedure getInstance is
      Java_Result : constant TouchScreenFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure isMultiTouch (This : in out TouchScreenFactory) is
      Java_Result : constant Boolean := TouchScreenFactory'Class (This).isMultiTouch;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isMultiTouch;

   procedure isTouch (This : in out TouchScreenFactory) is
      Java_Result : constant Boolean := TouchScreenFactory'Class (This).isTouch;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTouch;

   procedure getTouchScreenType (This : in out TouchScreenFactory) is
      Java_Result : constant TouchScreenType_Access := TouchScreenFactory'Class (This).getTouchScreenType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTouchScreenType;

begin
   null;
   SINGLETON := TouchScreenFactory_Package.Create;

end org.allbinary.input.motion.button.TouchScreenFactory_Package;


