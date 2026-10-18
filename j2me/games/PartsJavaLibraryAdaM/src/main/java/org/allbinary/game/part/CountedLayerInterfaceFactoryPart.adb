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


with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package body org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   procedure Initialize_Fields (This : in out CountedLayerInterfaceFactoryPart'Class) is
   begin
      null;
      This.updateMyFontProcessor := MyFontProcessor_Access (UpdateMyFontProcessor_Package.Create (CountedLayerInterfaceFactoryPart_Access'(This'Unchecked_Access)));
      This.myFontProcessor := This.updateMyFontProcessor;
      This.animationInterface := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
      This.total := 0;
      This.totalString := NullUtil_Package.getInstance.NULL_CHAR_ARRAY;
      This.xOffset := 0;
      This.countedPickedUpLayerInterfaceFactory := CountedPickedUpLayerInterfaceFactory_Package.NULL_COUNTED_PICKUP_LAYER_FACTORY;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CountedLayerInterfaceFactoryPart'Class; total : Integer; countedPickedUpLayerInterfaceFactory_Param : access CountedPickedUpLayerInterfaceFactory_Package.CountedPickedUpLayerInterfaceFactory'Class) is
      countedPickedUpLayerInterfaceFactory : constant CountedPickedUpLayerInterfaceFactory_Access := CountedPickedUpLayerInterfaceFactory_Access (countedPickedUpLayerInterfaceFactory_Param);
   begin
      Initialize_Fields (This);
        This.primitiveLongUtil := PrimitiveLongUtil_Package.createPowerOfTen (1000);
        CountedLayerInterfaceFactoryPart'Class (This).init (total, countedPickedUpLayerInterfaceFactory);
   end Initialize;

   function Create (total : Integer; countedPickedUpLayerInterfaceFactory_Param : access CountedPickedUpLayerInterfaceFactory_Package.CountedPickedUpLayerInterfaceFactory'Class) return CountedLayerInterfaceFactoryPart_Access is
      This : constant CountedLayerInterfaceFactoryPart_Access := new CountedLayerInterfaceFactoryPart;
   begin
      CountedLayerInterfaceFactoryPart_Package.Initialize (This.all, total, countedPickedUpLayerInterfaceFactory_Param);
      return This;
   end Create;

   procedure updateMeasurement (This : in out CountedLayerInterfaceFactoryPart; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        font := graphics.getFont;
        CountedLayerInterfaceFactoryPart'Class (This).setXOffset ((font.charsWidth (This.totalString, 0, This.primitiveLongUtil.getCurrentTotalDigits)) + ((Java_Shift_Right_Arithmetic (font.getSize, 1))));
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure init (This : in out CountedLayerInterfaceFactoryPart; total : Integer; countedPickedUpLayerInterfaceFactory_Param : access CountedPickedUpLayerInterfaceFactory_Package.CountedPickedUpLayerInterfaceFactory'Class) is
      countedPickedUpLayerInterfaceFactory : constant CountedPickedUpLayerInterfaceFactory_Access := CountedPickedUpLayerInterfaceFactory_Access (countedPickedUpLayerInterfaceFactory_Param);
   begin
        CountedLayerInterfaceFactoryPart'Class (This).setCountedPickedUpLayerInterfaceFactory (countedPickedUpLayerInterfaceFactory);
        This.total := total;
   end init;

   --  throws Exception
   function getInstance (This : in out CountedLayerInterfaceFactoryPart; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; x : Integer; y : Integer; z : Integer) return AllBinaryLayer_Access is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
   begin
        if (This.total) > (0) then
            CountedLayerInterfaceFactoryPart'Class (This).setTotal ((This.total) - (1));
            return CountedLayerInterfaceFactoryPart'Class (This).getCountedPickedUpLayerInterfaceFactory.getNextInstance (hashtable, x, y, z);
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

   procedure paint (This : in out CountedLayerInterfaceFactoryPart; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.myFontProcessor.process (graphics);
   end paint;

   procedure paintThreed (This : in out CountedLayerInterfaceFactoryPart; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintThreed;

   function getAnimationInterface (This : in out CountedLayerInterfaceFactoryPart) return Animation_Access is
   begin
        return This.animationInterface;
   end getAnimationInterface;

   procedure setAnimationInterface (This : in out CountedLayerInterfaceFactoryPart; animationInterface_Param : access Animation_Package.Animation'Class) is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
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

   procedure setCountedPickedUpLayerInterfaceFactory (This : in out CountedLayerInterfaceFactoryPart; countedPickedUpLayerInterfaceFactory_Param : access CountedPickedUpLayerInterfaceFactory_Package.CountedPickedUpLayerInterfaceFactory'Class) is
      countedPickedUpLayerInterfaceFactory : constant CountedPickedUpLayerInterfaceFactory_Access := CountedPickedUpLayerInterfaceFactory_Access (countedPickedUpLayerInterfaceFactory_Param);
   begin
        This.countedPickedUpLayerInterfaceFactory := countedPickedUpLayerInterfaceFactory;
   end setCountedPickedUpLayerInterfaceFactory;

   procedure getInstance (This : in out CountedLayerInterfaceFactoryPart; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; x : Integer; y : Integer; z : Integer) is
      Java_Result : constant AllBinaryLayer_Access := CountedLayerInterfaceFactoryPart'Class (This).getInstance (hashtable_Param, x, y, z);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   NULL_COUNTED_LAYER_INTERFACE_FACTORY := CountedLayerInterfaceFactoryPart_Package.Create (0, CountedPickedUpLayerInterfaceFactory_Package.NULL_COUNTED_PICKUP_LAYER_FACTORY);

end org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package;


