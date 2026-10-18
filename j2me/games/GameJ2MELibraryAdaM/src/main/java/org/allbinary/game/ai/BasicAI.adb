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


with org.allbinary.game.displayable.canvas.CanvasUtil_Package; use org.allbinary.game.displayable.canvas.CanvasUtil_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body org.allbinary.game.ai.BasicAI_Package is

   package CanvasUtil_Package renames Standard.org.allbinary.game.displayable.canvas.CanvasUtil_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out BasicAI'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.gameKeyEventFactory := GameKeyEventFactory_Package.getInstance;
      
      
      This.lastKey := -(1);
   end Initialize_Fields;


   procedure Initialize (This : in out BasicAI'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
   begin
      ArtificialIntelligence_Package.Initialize (This);
      Initialize_Fields (This);
        This.ownerLayerInterface := ownerLayerInterface;
        This.gameInput := gameInput;
   end Initialize;

   function Create (ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return BasicAI_Access is
      This : constant BasicAI_Access := new BasicAI;
   begin
      BasicAI_Package.Initialize (This.all, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out BasicAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end processAI;

   --  throws Exception
   procedure processKeyAI (This : in out BasicAI; key : Integer) is
   begin
        if (key) /= (-(1)) then
            This.gameInput.add (This.gameKeyEventFactory.getInstanceForKey (BasicAI_Access'(This'Unchecked_Access), key));
        end if;
   end processKeyAI;

   procedure setLastKey (This : in out BasicAI; lastKey : Integer) is
   begin
        This.lastKey := lastKey;
   end setLastKey;

   function getLastKey (This : in out BasicAI) return Integer is
   begin
        return This.lastKey;
   end getLastKey;

   function getOwnerLayerInterface (This : in out BasicAI) return AllBinaryLayer_Access is
   begin
        return This.ownerLayerInterface;
   end getOwnerLayerInterface;

   function getGameInput (This : in out BasicAI) return GameInput_Access is
   begin
        return This.gameInput;
   end getGameInput;

   function getName (This : in out BasicAI) return Unbounded_String is
   begin
        return To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag));
   end getName;

   function toString (This : in out BasicAI) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        stringBuffer.append (BasicAI'Class (This).getName);
        stringBuffer.append (To_Unbounded_String (" LastKey: "));
        stringBuffer.append (CanvasUtil_Package.getKeyName (BasicAI'Class (This).getLastKey));
        return stringBuffer.toString;
   end toString;

   function getSourceId (This : in out BasicAI) return Integer is
   begin
        return 1;
   end getSourceId;

begin
   null;
   AI_VISITOR := SmallIntegerSingletonFactory_Package.getInstance.getAt (2);
   ID := SmallIntegerSingletonFactory_Package.getInstance.getAt (1);

end org.allbinary.game.ai.BasicAI_Package;


