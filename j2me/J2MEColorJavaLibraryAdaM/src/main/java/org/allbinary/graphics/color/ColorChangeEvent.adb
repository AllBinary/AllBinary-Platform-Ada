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


package body org.allbinary.graphics.color.ColorChangeEvent_Package is

   procedure Initialize_Fields (This : in out ColorChangeEvent'Class) is
   begin
      null;
      This.basicColor := BasicColorFactory_Package.getInstance.WHITE;
   end Initialize_Fields;


   procedure Initialize (This : in out ColorChangeEvent'Class; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        AllBinaryEventObject_Package.Initialize (This, anyType);
        Initialize_Fields (This);
   end Initialize;

   function Create (anyType_Param : access Java_Object'Class) return ColorChangeEvent_Access is
      This : constant ColorChangeEvent_Access := new ColorChangeEvent;
   begin
      ColorChangeEvent_Package.Initialize (This.all, anyType_Param);
      return This;
   end Create;

   procedure setBasicColorP (This : in out ColorChangeEvent; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        This.basicColor := basicColor;
   end setBasicColorP;

   function getBasicColorP (This : in out ColorChangeEvent) return BasicColor_Access is
   begin
        return This.basicColor;
   end getBasicColorP;

end org.allbinary.graphics.color.ColorChangeEvent_Package;


