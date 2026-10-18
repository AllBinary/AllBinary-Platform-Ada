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


package body org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package is

   procedure Initialize_Fields (This : in out IntegerDimension'Class) is
   begin
      null;
      This.width := 0;
      This.height := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out IntegerDimension'Class; width : Integer; height : Integer) is
   begin
      Initialize_Fields (This);
        IntegerDimension'Class (This).setWidth (width);
        IntegerDimension'Class (This).setHeight (height);
   end Initialize;

   function Create (width : Integer; height : Integer) return IntegerDimension_Access is
      This : constant IntegerDimension_Access := new IntegerDimension;
   begin
      IntegerDimension_Package.Initialize (This.all, width, height);
      return This;
   end Create;

   function getWidth (This : in out IntegerDimension) return Integer is
   begin
        return This.width;
   end getWidth;

   procedure setWidth (This : in out IntegerDimension; width : Integer) is
   begin
        This.width := width;
   end setWidth;

   function getHeight (This : in out IntegerDimension) return Integer is
   begin
        return This.height;
   end getHeight;

   procedure setHeight (This : in out IntegerDimension; height : Integer) is
   begin
        This.height := height;
   end setHeight;

end org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package;


