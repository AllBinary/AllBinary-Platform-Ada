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


package body org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package is

   procedure Initialize_Fields (This : in out CountedLayerInterfaceFactoryPart'Class) is
   begin
      null;
      This.updateMyFontProcessor := UpdateMyFontProcessor_Package.Create (This'Unchecked_Access);
      This.myFontProcessor := This.updateMyFontProcessor;
      This.animationInterface := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
      This.total := 0;
      This.totalString := NullUtil_Package.getInstance.NULL_CHAR_ARRAY;
      This.xOffset := 0;
      This.countedPickedUpLayerInterfaceFactory := CountedPickedUpLayerInterfaceFactory_Package.NULL_COUNTED_PICKUP_LAYER_FACTORY;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CountedLayerInterfaceFactoryPart'Class; total : Integer; countedPickedUpLayerInterfaceFactory : CountedPickedUpLayerInterfaceFactory_Access) is
   begin
      Initialize_Fields (This);
        This.primitiveLongUtil := PrimitiveLongUtil_Package.createPowerOfTen (1000);
        This.init (total, countedPickedUpLayerInterfaceFactory);
   end Initialize;

   function Create (total : Integer; countedPickedUpLayerInterfaceFactory : CountedPickedUpLayerInterfaceFactory_Access) return CountedLayerInterfaceFactoryPart_Access is
      This : constant CountedLayerInterfaceFactoryPart_Access := new CountedLayerInterfaceFactoryPart;
   begin
      CountedLayerInterfaceFactoryPart_Package.Initialize (This.all, total, countedPickedUpLayerInterfaceFactory);
      return This;
   end Create;

   procedure updateMeasurement (This : in out CountedLayerInterfaceFactoryPart; graphics : Graphics_Access) is
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.setXOffset ((font.charsWidth (This.totalString, 0, This.primitiveLongUtil.getCurrentTotalDigits)) + ((Java_Shift_Right_Arithmetic (font.getSize, 1))));
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure init (This : in out CountedLayerInterfaceFactoryPart; total : Integer; countedPickedUpLayerInterfaceFactory : CountedPickedUpLayerInterfaceFactory_Access) is
   begin
        This.setCountedPickedUpLayerInterfaceFactory (countedPickedUpLayerInterfaceFactory);
        This.total := total;
   end init;

   --  throws Exception
   function getInstance (This : in out CountedLayerInterfaceFactoryPart; hashtable : ABHashtable_Access; x : Integer; y : Integer; z : Integer) return AllBinaryLayer_Access is
   begin
        if (This.total) > (0) then
            This.setTotal ((This.total) - (1));
            return This.getCountedPickedUpLayerInterfaceFactory.getNextInstance (hashtable, x, y, z);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No more left. Could use a listener to automatically remove")));
        end if;
   end getInstance;

   function getTotal (This : in out CountedLayerInterfaceFactoryPart) return Integer is
   begin
        return This.total;
   end getTotal;

   procedure setTotal (This : in out CountedLayerInterfaceFactoryPart; total : Integer) is
   begin
        This.total := total;
        This.totalString := This.primitiveLongUtil.getCharArray (total);
        This.myFontProcessor := This.updateMyFontProcessor;
   end setTotal;

   procedure paint (This : in out CountedLayerInterfaceFactoryPart; graphics : Graphics_Access) is
   begin
        This.myFontProcessor.process (graphics);
   end paint;

   procedure paintThreed (This : in out CountedLayerInterfaceFactoryPart; graphics : Graphics_Access) is
   begin
        null;
   end paintThreed;

   function getAnimationInterface (This : in out CountedLayerInterfaceFactoryPart) return Animation_Access is
   begin
        return This.animationInterface;
   end getAnimationInterface;

   procedure setAnimationInterface (This : in out CountedLayerInterfaceFactoryPart; animationInterface : Animation_Access) is
   begin
        This.animationInterface := animationInterface;
   end setAnimationInterface;

   function getXOffset (This : in out CountedLayerInterfaceFactoryPart) return Integer is
   begin
        return This.xOffset;
   end getXOffset;

   procedure setXOffset (This : in out CountedLayerInterfaceFactoryPart; totalStringWidth : Integer) is
   begin
        This.xOffset := totalStringWidth;
   end setXOffset;

   function getTotalString (This : in out CountedLayerInterfaceFactoryPart) return Character_Array_Access is
   begin
        return This.totalString;
   end getTotalString;

   function getCountedPickedUpLayerInterfaceFactory (This : in out CountedLayerInterfaceFactoryPart) return CountedPickedUpLayerInterfaceFactory_Access is
   begin
        return This.countedPickedUpLayerInterfaceFactory;
   end getCountedPickedUpLayerInterfaceFactory;

   procedure setCountedPickedUpLayerInterfaceFactory (This : in out CountedLayerInterfaceFactoryPart; countedPickedUpLayerInterfaceFactory : CountedPickedUpLayerInterfaceFactory_Access) is
   begin
        This.countedPickedUpLayerInterfaceFactory := countedPickedUpLayerInterfaceFactory;
   end setCountedPickedUpLayerInterfaceFactory;

   procedure getInstance (This : in out CountedLayerInterfaceFactoryPart; hashtable : ABHashtable_Access; x : Integer; y : Integer; z : Integer) is
      Java_Result : constant AllBinaryLayer_Access := CountedLayerInterfaceFactoryPart'Class (This).getInstance (hashtable, x, y, z);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   NULL_COUNTED_LAYER_INTERFACE_FACTORY := CountedLayerInterfaceFactoryPart_Package.Create (0, CountedPickedUpLayerInterfaceFactory_Package.NULL_COUNTED_PICKUP_LAYER_FACTORY);

end org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package;


