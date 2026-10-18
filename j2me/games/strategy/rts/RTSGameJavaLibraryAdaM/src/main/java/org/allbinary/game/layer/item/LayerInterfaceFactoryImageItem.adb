-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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



package body org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package is

   procedure Initialize_Fields (This : in out LayerInterfaceFactoryImageItem'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out LayerInterfaceFactoryImageItem'Class; label : Unbounded_String; img_Param : access Image_Package.Image'Class; layout : Integer; altText : Unbounded_String; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationArray : Animation_Access_Array_Access; layerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class) is
      img : constant Image_Access := Image_Access (img_Param);
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      layerInterfaceFactoryInterface : constant LayerInterfaceFactoryInterface_Access := LayerInterfaceFactoryInterface_Access (layerInterfaceFactoryInterface_Param);
   begin
        ABCustomImageItem_Package.Initialize (This, label, img, layout, altText, basicColor, 0);
        Initialize_Fields (This);
        This.animationArray := animationArray;
        This.layerInterfaceFactoryInterface := layerInterfaceFactoryInterface;
   end Initialize;

   function Create (label : Unbounded_String; img_Param : access Image_Package.Image'Class; layout : Integer; altText : Unbounded_String; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationArray : Animation_Access_Array_Access; layerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class) return LayerInterfaceFactoryImageItem_Access is
      This : constant LayerInterfaceFactoryImageItem_Access := new LayerInterfaceFactoryImageItem;
   begin
      LayerInterfaceFactoryImageItem_Package.Initialize (This.all, label, img_Param, layout, altText, basicColor_Param, animationArray, layerInterfaceFactoryInterface_Param);
      return This;
   end Create;

   function getLayerInterfaceFactoryInterface (This : in out LayerInterfaceFactoryImageItem) return LayerInterfaceFactoryInterface_Access is
   begin
        return This.layerInterfaceFactoryInterface;
   end getLayerInterfaceFactoryInterface;

   procedure paintXY (This : in out LayerInterfaceFactoryImageItem; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      index : Integer;
   begin
        ABCustomImageItem (This).paintXY (graphics, x, y);
        index := This.animationArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationArray (index).paintXY (graphics, x, y);
        end loop;
   end paintXY;

end org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package;


