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


   procedure Initialize (This : in out ColorChangeEvent'Class; anyType : Java_Object_Access) is
   begin
        AllBinaryEventObject_Package.Initialize (This, anyType);
        Initialize_Fields (This);
   end Initialize;

   function Create (anyType : Java_Object_Access) return ColorChangeEvent_Access is
      This : constant ColorChangeEvent_Access := new ColorChangeEvent;
   begin
      Initialize (This.all, anyType);
      return This;
   end Create;

   procedure setBasicColorP (This : in out ColorChangeEvent; basicColor : BasicColor_Access) is
   begin
        This.basicColor := basicColor;
   end setBasicColorP;

   function getBasicColorP (This : in out ColorChangeEvent) return BasicColor_Access is
   begin
        return This.basicColor;
   end getBasicColorP;

   procedure getBasicColorP (This : in out ColorChangeEvent) is
      Java_Result : constant BasicColor_Access := ColorChangeEvent'Class (This).getBasicColorP;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBasicColorP;

end org.allbinary.graphics.color.ColorChangeEvent_Package;


