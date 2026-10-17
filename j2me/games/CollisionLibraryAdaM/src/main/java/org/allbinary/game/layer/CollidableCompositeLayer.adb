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

   procedure Initialize (This : in out CollidableCompositeLayer'Class; name : Unbounded_String; layerInfo : Rectangle_Access; viewPosition : ViewPositionBase_Access; collidableBaseBehaviorFactory : CollidableBaseBehaviorFactory_Access) is
   begin
        AllBinaryGameLayer_Package.Initialize (This, name, layerInfo, viewPosition);
        Initialize_Fields (This);
        if (collidableBaseBehaviorFactory) /= (CollidableNeverCollideBehaviorFactory_Package.getInstance) then
            This.setCollidableInferface (collidableBaseBehaviorFactory.createBehavior);
        end if;
   end Initialize;

   function Create (name : Unbounded_String; layerInfo : Rectangle_Access; viewPosition : ViewPositionBase_Access; collidableBaseBehaviorFactory : CollidableBaseBehaviorFactory_Access) return CollidableCompositeLayer_Access is
      This : constant CollidableCompositeLayer_Access := new CollidableCompositeLayer;
   begin
      CollidableCompositeLayer_Package.Initialize (This.all, name, layerInfo, viewPosition, collidableBaseBehaviorFactory);
      return This;
   end Create;

   function getArtificialIntelligenceInterface (This : in out CollidableCompositeLayer) return ArtificialIntelligenceInterface_Access is
   begin
        ForcedLogUtil_Package.log (This.commonStrings.NOT_IMPLEMENTED, This'Unchecked_Access);
        return ArtificialIntelligence_Package.getInstance;
   end getArtificialIntelligenceInterface;

   function getCollidableInferface (This : in out CollidableCompositeLayer) return CollidableBaseBehavior_Access is
   begin
        return This.collidableInferface;
   end getCollidableInferface;

   procedure setCollidableInferface (This : in out CollidableCompositeLayer; collidableInferface : CollidableBaseBehavior_Access) is
   begin
        This.collidableInferface := collidableInferface;
   end setCollidableInferface;

   function implmentsCollidableInterface (This : in out CollidableCompositeLayer) return Boolean is
   begin
        return True;
   end implmentsCollidableInterface;

   procedure toStringAppend (This : in out CollidableCompositeLayer; stringBuffer : StringMaker_Access) is
      commonSeps : CommonSeps_Access;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        AllBinaryGameLayer (This).toStringAppend (stringBuffer);
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (This.getCollidableInferface.toString);
   end toStringAppend;

   function toString (This : in out CollidableCompositeLayer) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        This.toStringAppend (stringBuffer);
        return stringBuffer.toString;
   end toString;

begin
   null;
   NULL_COLLIDABLE_COMPOSITE_LAYER := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.layer.CollidableCompositeLayer_Package;


