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


package body org.allbinary.media.image.cache.BufferedImageInfo_Package is

   procedure Initialize_Fields (This : in out BufferedImageInfo'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BufferedImageInfo'Class; width : Integer; height : Integer; type_Id : Integer) is
   begin
      Initialize_Fields (This);
        This.width := width;
        This.height := height;
        This.type_Id := type_Id;
   end Initialize;

   function Create (width : Integer; height : Integer; type_Id : Integer) return BufferedImageInfo_Access is
      This : constant BufferedImageInfo_Access := new BufferedImageInfo;
   begin
      BufferedImageInfo_Package.Initialize (This.all, width, height, type_Id);
      return This;
   end Create;

   function getWidth (This : in out BufferedImageInfo) return Integer is
   begin
        return This.width;
   end getWidth;

   procedure setWidth (This : in out BufferedImageInfo; width : Integer) is
   begin
        This.width := width;
   end setWidth;

   function getHeight (This : in out BufferedImageInfo) return Integer is
   begin
        return This.height;
   end getHeight;

   procedure setHeight (This : in out BufferedImageInfo; height : Integer) is
   begin
        This.height := height;
   end setHeight;

   function getType (This : in out BufferedImageInfo) return Integer is
   begin
        return This.type_Id;
   end getType;

   procedure setType (This : in out BufferedImageInfo; type_Id : Integer) is
   begin
        This.type_Id := type_Id;
   end setType;

   function toString (This : in out BufferedImageInfo) return Unbounded_String is
      commonLabels : CommonLabels_Access;
      stringBuffer : StringMaker_Access;
   begin
        commonLabels := CommonLabels_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("BufferedImageInfo -"));
        stringBuffer.append (commonLabels.WIDTH_LABEL);
        stringBuffer.appendint (BufferedImageInfo'Class (This).getWidth);
        stringBuffer.append (commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint (BufferedImageInfo'Class (This).getHeight);
        stringBuffer.append (To_Unbounded_String (" Type: "));
        stringBuffer.appendint (BufferedImageInfo'Class (This).getType);
        return stringBuffer.toString;
   end toString;

end org.allbinary.media.image.cache.BufferedImageInfo_Package;


