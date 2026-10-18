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



package body org.allbinary.media.image.ImageUnifierCell_Package is

   procedure Initialize_Fields (This : in out ImageUnifierCell'Class) is
   begin
      null;
      This.width := null;
      This.height := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageUnifierCell'Class; width : Integer; height : Integer) is
   begin
      Initialize_Fields (This);
        ImageUnifierCell'Class (This).setWidth (width);
        ImageUnifierCell'Class (This).setHeight (height);
   end Initialize;

   function Create (width : Integer; height : Integer) return ImageUnifierCell_Access is
      This : constant ImageUnifierCell_Access := new ImageUnifierCell;
   begin
      ImageUnifierCell_Package.Initialize (This.all, width, height);
      return This;
   end Create;

   function getWidth (This : in out ImageUnifierCell) return Integer is
   begin
        return This.width;
   end getWidth;

   procedure setWidth (This : in out ImageUnifierCell; width : Integer) is
   begin
        This.width := width;
   end setWidth;

   function getHeight (This : in out ImageUnifierCell) return Integer is
   begin
        return This.height;
   end getHeight;

   procedure setHeight (This : in out ImageUnifierCell; height : Integer) is
   begin
        This.height := height;
   end setHeight;

end org.allbinary.media.image.ImageUnifierCell_Package;


