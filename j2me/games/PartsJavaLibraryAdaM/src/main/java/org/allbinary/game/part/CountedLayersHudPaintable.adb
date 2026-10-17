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


package body org.allbinary.game.part.CountedLayersHudPaintable_Package is

   procedure Initialize_Fields (This : in out CountedLayersHudPaintable'Class) is
   begin
      null;
      This.displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
      
      
      
      
      
      This.myFontProcessor := UpdateMyFontProcessor_Package.Create (This'Unchecked_Access);
      This.height := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out CountedLayersHudPaintable'Class; partInterfaceArray : PartInterface_Access_Array_Access; dropSize : Integer; startIndex : Integer; countedTotalStringColor : Integer; countedPartsBorder : Integer) is
   begin
      Initialize_Fields (This);
        This.partInterfaceArray := partInterfaceArray;
        This.startIndex := startIndex;
        This.countedTotalStringColor := countedTotalStringColor;
        This.countedPartsBorder := countedPartsBorder;
        This.dropSize := dropSize;
   end Initialize;

   function Create (partInterfaceArray : PartInterface_Access_Array_Access; dropSize : Integer; startIndex : Integer; countedTotalStringColor : Integer; countedPartsBorder : Integer) return CountedLayersHudPaintable_Access is
      This : constant CountedLayersHudPaintable_Access := new CountedLayersHudPaintable;
   begin
      CountedLayersHudPaintable_Package.Initialize (This.all, partInterfaceArray, dropSize, startIndex, countedTotalStringColor, countedPartsBorder);
      return This;
   end Create;

   procedure updateMeasurement (This : in out CountedLayersHudPaintable; graphics : Graphics_Access) is
      font : Font_Access;
      XXString : Unbounded_String;
   begin
        font := graphics.getFont;
        This.height := font.getHeight;
        if (This.dropSize) > (font.getHeight) then
            This.height := This.dropSize;
        end if;
        if (CountedLayersHudPaintable_Package.XXStringWidth) = (0) then
            XXString := To_Unbounded_String ("XX");
            CountedLayersHudPaintable_Package.XXStringWidth := font.stringWidth (XXString);
        end if;
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure paint (This : in out CountedLayersHudPaintable; graphics : Graphics_Access) is
      lastWidth : Integer;
      widthEdge : Integer;
      size : Integer;
      count : Integer;
      y : Integer;
      countedLayerInterfaceFactory : CountedLayerInterfaceFactoryPart_Access;
      pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface_Access;
      layerInterface : AllBinaryLayer_Access;
      charArray : Character_Array_Access;
      index : Integer;
   begin
        This.myFontProcessor.process (graphics);
        lastWidth := This.displayInfoSingleton.getLastWidth;
        widthEdge := (lastWidth) - (This.dropSize);
        size := This.partInterfaceArray'Length;
        count := 0;
        y := 0;
        countedLayerInterfaceFactory := null;
        pickedUpLayerInterfaceFactoryInterface := null;
        layerInterface := null;
        charArray := null;
        for index in This.startIndex .. (size) - 1 loop
            countedLayerInterfaceFactory := CountedLayerInterfaceFactoryPart_Access (This.partInterfaceArray (index));
            if (countedLayerInterfaceFactory.getTotal) > (0) then
                pickedUpLayerInterfaceFactoryInterface := countedLayerInterfaceFactory.getCountedPickedUpLayerInterfaceFactory;
                layerInterface := pickedUpLayerInterfaceFactoryInterface.getIconLayer;
                y := (40) + (((count) * (This.height)));
                layerInterface.setPosition (widthEdge, y, layerInterface.getZP);
                layerInterface.paint (graphics);
                graphics.setColor (This.countedTotalStringColor);
                countedLayerInterfaceFactory.paint (graphics);
                charArray := countedLayerInterfaceFactory.getTotalString;
                graphics.drawChars (charArray, 0, charArray'Length, (widthEdge) - (countedLayerInterfaceFactory.getXOffset), y, 0);
                count := count + 1;
            end if;
        end loop;
        if (count) > (0) then
            graphics.setColor (This.countedPartsBorder);
            graphics.drawRect ((lastWidth) - (((CountedLayersHudPaintable_Package.XXStringWidth) + (This.dropSize))), 40, (CountedLayersHudPaintable_Package.XXStringWidth) + (This.dropSize), (((count) * (This.height))) + (3));
        end if;
   end paint;

   procedure paintThreed (This : in out CountedLayersHudPaintable; graphics : Graphics_Access) is
   begin
        null;
   end paintThreed;

begin
   null;
   XXStringWidth := 0;

end org.allbinary.game.part.CountedLayersHudPaintable_Package;


