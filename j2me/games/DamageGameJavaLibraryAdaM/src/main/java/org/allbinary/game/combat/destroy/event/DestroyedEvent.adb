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


package body org.allbinary.game.combat.destroy.event.DestroyedEvent_Package is

   procedure Initialize_Fields (This : in out DestroyedEvent'Class) is
   begin
      null;
      This.allBinaryGameCanvas := NullGameCanvas_Package.getInstance;
      This.allBinaryLayerInterface := AllBinaryLayer_Package.NULL_ALLBINARY_LAYER;
   end Initialize_Fields;


   procedure Initialize (This : in out DestroyedEvent'Class; combatGameCanvas : AllBinaryGameCanvas_Access) is
   begin
        AllBinaryEventObject_Package.Initialize (This, DestroyedEventHandler_Package.getInstance);
        Initialize_Fields (This);
        This.setAllBinaryGameCanvas (combatGameCanvas);
   end Initialize;

   function Create (combatGameCanvas : AllBinaryGameCanvas_Access) return DestroyedEvent_Access is
      This : constant DestroyedEvent_Access := new DestroyedEvent;
   begin
      Initialize (This.all, combatGameCanvas);
      return This;
   end Create;

   function getAllBinaryGameCanvas (This : in out DestroyedEvent) return AllBinaryGameCanvas_Access is
   begin
        return This.allBinaryGameCanvas;
   end getAllBinaryGameCanvas;

   function getLayerInterface (This : in out DestroyedEvent) return AllBinaryLayer_Access is
   begin
        return This.allBinaryLayerInterface;
   end getLayerInterface;

   procedure setAllBinaryGameCanvas (This : in out DestroyedEvent; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
   begin
        This.allBinaryGameCanvas := allBinaryGameCanvas;
   end setAllBinaryGameCanvas;

   procedure setLayerInterfaceForCircularStaticPool (This : in out DestroyedEvent; allBinaryLayerInterface : AllBinaryLayer_Access) is
   begin
        This.allBinaryLayerInterface := allBinaryLayerInterface;
   end setLayerInterfaceForCircularStaticPool;

   function toString (This : in out DestroyedEvent) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("DestroyedEvent: " & ASCII.LF & ""));
        stringBuffer.append (To_Unbounded_String ("AllBinaryLayerInterface: "));
        stringBuffer.append (This.allBinaryLayerInterface.toString);
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "AllBinaryGameCanvas: "));
        stringBuffer.append (StringUtil_Package.getInstance.toString (This.getAllBinaryGameCanvas));
        return stringBuffer.toString;
   end toString;

   procedure getAllBinaryGameCanvas (This : in out DestroyedEvent) is
      Java_Result : constant AllBinaryGameCanvas_Access := DestroyedEvent'Class (This).getAllBinaryGameCanvas;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAllBinaryGameCanvas;

   procedure getLayerInterface (This : in out DestroyedEvent) is
      Java_Result : constant AllBinaryLayer_Access := DestroyedEvent'Class (This).getLayerInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLayerInterface;

   procedure toString (This : in out DestroyedEvent) is
      Java_Result : constant Unbounded_String := DestroyedEvent'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;


