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


package body org.allbinary.game.layer.CollidableCompositeLayer_Package is

   procedure Initialize_Fields (This : in out CollidableCompositeLayer'Class) is
   begin
      null;
      This.collidableInferface := CollidableNeverCollideBehaviorFactory_Package.getInstance.createBehavior;
   end Initialize_Fields;


   function getNullInstance return CollidableCompositeLayer_Access is
   begin
        if (CollidableCompositeLayer_Package.NULL_COLLIDABLE_COMPOSITE_LAYER) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            CollidableCompositeLayer_Package.NULL_COLLIDABLE_COMPOSITE_LAYER := CollidableCompositeLayer_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, RectangleFactory_Package.SINGLETON, ViewPositionBase_Package.NULL_VIEW_POSITION, CollidableNeverCollideBehaviorFactory_Package.getInstance);
        end if;
        return CollidableCompositeLayer_Access (CollidableCompositeLayer_Package.NULL_COLLIDABLE_COMPOSITE_LAYER);
   end getNullInstance;

   procedure Initialize (This : in out CollidableCompositeLayer'Class; name : Unbounded_String; layerInfo_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class; collidableBaseBehaviorFactory_Param : access CollidableBaseBehaviorFactory_Package.CollidableBaseBehaviorFactory'Class) is
      layerInfo : constant Rectangle_Access := Rectangle_Access (layerInfo_Param);
      viewPosition : constant ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
      collidableBaseBehaviorFactory : constant CollidableBaseBehaviorFactory_Access := CollidableBaseBehaviorFactory_Access (collidableBaseBehaviorFactory_Param);
   begin
        AllBinaryGameLayer_Package.Initialize (This, name, layerInfo, viewPosition);
        Initialize_Fields (This);
        if (collidableBaseBehaviorFactory) /= (CollidableNeverCollideBehaviorFactory_Package.getInstance) then
            CollidableCompositeLayer'Class (This).setCollidableInferface (collidableBaseBehaviorFactory.createBehavior);
        end if;
   end Initialize;

   function Create (name : Unbounded_String; layerInfo_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class; collidableBaseBehaviorFactory_Param : access CollidableBaseBehaviorFactory_Package.CollidableBaseBehaviorFactory'Class) return CollidableCompositeLayer_Access is
      This : constant CollidableCompositeLayer_Access := new CollidableCompositeLayer;
   begin
      CollidableCompositeLayer_Package.Initialize (This.all, name, layerInfo_Param, viewPosition_Param, collidableBaseBehaviorFactory_Param);
      return This;
   end Create;

   function getArtificialIntelligenceInterface (This : in out CollidableCompositeLayer) return ArtificialIntelligenceInterface_Access is
   begin
        ForcedLogUtil_Package.log (This.commonStrings.NOT_IMPLEMENTED, CollidableCompositeLayer_Access'(This'Unchecked_Access));
        return ArtificialIntelligence_Package.getInstance;
   end getArtificialIntelligenceInterface;

   function getCollidableInferface (This : in out CollidableCompositeLayer) return CollidableBaseBehavior_Access is
   begin
        return This.collidableInferface;
   end getCollidableInferface;

   procedure setCollidableInferface (This : in out CollidableCompositeLayer; collidableInferface_Param : access CollidableBaseBehavior_Package.CollidableBaseBehavior'Class) is
      collidableInferface : constant CollidableBaseBehavior_Access := CollidableBaseBehavior_Access (collidableInferface_Param);
   begin
        This.collidableInferface := collidableInferface;
   end setCollidableInferface;

   function implmentsCollidableInterface (This : in out CollidableCompositeLayer) return Boolean is
   begin
        return True;
   end implmentsCollidableInterface;

   procedure toStringAppend (This : in out CollidableCompositeLayer; stringBuffer_Param : access StringMaker_Package.StringMaker'Class) is
      stringBuffer : constant StringMaker_Access := StringMaker_Access (stringBuffer_Param);
      commonSeps : CommonSeps_Access;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        AllBinaryGameLayer (This).toStringAppend (stringBuffer);
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (CollidableCompositeLayer'Class (This).getCollidableInferface.toString);
   end toStringAppend;

   function toString (This : in out CollidableCompositeLayer) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        CollidableCompositeLayer'Class (This).toStringAppend (stringBuffer);
        return stringBuffer.toString;
   end toString;

begin
   null;
   NULL_COLLIDABLE_COMPOSITE_LAYER := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.layer.CollidableCompositeLayer_Package;


