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
      Initialize (This.all);
      return This;
   end Create;

   function getWidth (This : in out ImageUnifierProperties) return Integer is
   begin
        return (This.getColumns.intValue) * (This.getImageUnifierCell.getWidth.intValue);
   end getWidth;

   function getHeight (This : in out ImageUnifierProperties) return Integer is
   begin
        return (This.getRows.intValue) * (This.getImageUnifierCell.getHeight.intValue);
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

   procedure setImageUnifierCell (This : in out ImageUnifierProperties; imageUnifierCell : ImageUnifierCell_Access) is
   begin
        This.imageUnifierCell := imageUnifierCell;
   end setImageUnifierCell;

   procedure getWidth (This : in out ImageUnifierProperties) is
      Java_Result : constant Integer := ImageUnifierProperties'Class (This).getWidth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWidth;

   procedure getHeight (This : in out ImageUnifierProperties) is
      Java_Result : constant Integer := ImageUnifierProperties'Class (This).getHeight;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHeight;

   procedure getRows (This : in out ImageUnifierProperties) is
      Java_Result : constant Integer := ImageUnifierProperties'Class (This).getRows;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRows;

   procedure getColumns (This : in out ImageUnifierProperties) is
      Java_Result : constant Integer := ImageUnifierProperties'Class (This).getColumns;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getColumns;

   procedure getImageUnifierCell (This : in out ImageUnifierProperties) is
      Java_Result : constant ImageUnifierCell_Access := ImageUnifierProperties'Class (This).getImageUnifierCell;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImageUnifierCell;

end org.allbinary.media.image.ImageUnifierProperties_Package;


