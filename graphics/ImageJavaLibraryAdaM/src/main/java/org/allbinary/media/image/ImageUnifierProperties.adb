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



package body org.allbinary.media.image.ImageUnifierProperties_Package is

   procedure Initialize_Fields (This : in out ImageUnifierProperties'Class) is
   begin
      null;
      This.rows := null;
      This.columns := null;
      This.imageUnifierCell := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageUnifierProperties'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageUnifierProperties_Access is
      This : constant ImageUnifierProperties_Access := new ImageUnifierProperties;
   begin
      ImageUnifierProperties_Package.Initialize (This.all);
      return This;
   end Create;

   function getWidth (This : in out ImageUnifierProperties) return Integer is
   begin
        return (ImageUnifierProperties'Class (This).getColumns.intValue) * (ImageUnifierProperties'Class (This).getImageUnifierCell.getWidth.intValue);
   end getWidth;

   function getHeight (This : in out ImageUnifierProperties) return Integer is
   begin
        return (ImageUnifierProperties'Class (This).getRows.intValue) * (ImageUnifierProperties'Class (This).getImageUnifierCell.getHeight.intValue);
   end getHeight;

   function getRows (This : in out ImageUnifierProperties) return Integer is
   begin
        return This.rows;
   end getRows;

   procedure setRows (This : in out ImageUnifierProperties; rows : Integer) is
   begin
        This.rows := rows;
   end setRows;

   function getColumns (This : in out ImageUnifierProperties) return Integer is
   begin
        return This.columns;
   end getColumns;

   procedure setColumns (This : in out ImageUnifierProperties; columns : Integer) is
   begin
        This.columns := columns;
   end setColumns;

   function getImageUnifierCell (This : in out ImageUnifierProperties) return ImageUnifierCell_Access is
   begin
        return This.imageUnifierCell;
   end getImageUnifierCell;

   procedure setImageUnifierCell (This : in out ImageUnifierProperties; imageUnifierCell_Param : access ImageUnifierCell_Package.ImageUnifierCell'Class) is
      imageUnifierCell : constant ImageUnifierCell_Access := ImageUnifierCell_Access (imageUnifierCell_Param);
   begin
        This.imageUnifierCell := imageUnifierCell;
   end setImageUnifierCell;

end org.allbinary.media.image.ImageUnifierProperties_Package;


