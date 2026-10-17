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


   procedure Initialize (This : in out LayerInterfaceFactoryImageItem'Class; label : Unbounded_String; img : Image_Access; layout : Integer; altText : Unbounded_String; basicColor : BasicColor_Access; animationArray : Animation_Access_Array_Access; layerInterfaceFactoryInterface : LayerInterfaceFactoryInterface_Access) is
   begin
        ABCustomImageItem_Package.Initialize (This, label, img, layout, altText, basicColor, 0);
        Initialize_Fields (This);
        This.animationArray := animationArray;
        This.layerInterfaceFactoryInterface := layerInterfaceFactoryInterface;
   end Initialize;

   function Create (label : Unbounded_String; img : Image_Access; layout : Integer; altText : Unbounded_String; basicColor : BasicColor_Access; animationArray : Animation_Access_Array_Access; layerInterfaceFactoryInterface : LayerInterfaceFactoryInterface_Access) return LayerInterfaceFactoryImageItem_Access is
      This : constant LayerInterfaceFactoryImageItem_Access := new LayerInterfaceFactoryImageItem;
   begin
      Initialize (This.all, label, img, layout, altText, basicColor, animationArray, layerInterfaceFactoryInterface);
      return This;
   end Create;

   function getLayerInterfaceFactoryInterface (This : in out LayerInterfaceFactoryImageItem) return LayerInterfaceFactoryInterface_Access is
   begin
        return This.layerInterfaceFactoryInterface;
   end getLayerInterfaceFactoryInterface;

   procedure paintXY (This : in out LayerInterfaceFactoryImageItem; graphics : Graphics_Access; x : Integer; y : Integer) is
      index : Integer;
   begin
        ABCustomImageItem (This).paintXY (graphics, x, y);
        index := This.animationArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationArray (index).paintXY (graphics, x, y);
        end loop;
   end paintXY;

   procedure getLayerInterfaceFactoryInterface (This : in out LayerInterfaceFactoryImageItem) is
      Java_Result : constant LayerInterfaceFactoryInterface_Access := LayerInterfaceFactoryImageItem'Class (This).getLayerInterfaceFactoryInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLayerInterfaceFactoryInterface;

end org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package;


