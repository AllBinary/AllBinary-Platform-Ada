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


package body org.allbinary.layer.event.ScrollMapEvent_Package is

   procedure Initialize_Fields (This : in out ScrollMapEvent'Class) is
   begin
      null;
      This.dx := 0;
      This.dy := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out ScrollMapEvent'Class; anyType : Java_Object_Access) is
   begin
        AllBinaryEventObject_Package.Initialize (This, anyType);
        Initialize_Fields (This);
   end Initialize;

   function Create (anyType : Java_Object_Access) return ScrollMapEvent_Access is
      This : constant ScrollMapEvent_Access := new ScrollMapEvent;
   begin
      Initialize (This.all, anyType);
      return This;
   end Create;

   procedure setDx (This : in out ScrollMapEvent; dx : Integer) is
   begin
        This.dx := dx;
   end setDx;

   function getDx (This : in out ScrollMapEvent) return Integer is
   begin
        return This.dx;
   end getDx;

   procedure setDy (This : in out ScrollMapEvent; dy : Integer) is
   begin
        This.dy := dy;
   end setDy;

   function getDy (This : in out ScrollMapEvent) return Integer is
   begin
        return This.dy;
   end getDy;

   procedure setDxDy (This : in out ScrollMapEvent; dx : Integer; dy : Integer) is
   begin
        This.dx := dx;
        This.dy := dy;
   end setDxDy;

   procedure getDx (This : in out ScrollMapEvent) is
      Java_Result : constant Integer := ScrollMapEvent'Class (This).getDx;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDx;

   procedure getDy (This : in out ScrollMapEvent) is
      Java_Result : constant Integer := ScrollMapEvent'Class (This).getDy;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDy;

end org.allbinary.layer.event.ScrollMapEvent_Package;


