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


with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.RelativeRelationship_Package; use org.allbinary.graphics.RelativeRelationship_Package;
with org.allbinary.layer.relationship.RelativeLayerRelationship_Package; use org.allbinary.layer.relationship.RelativeLayerRelationship_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package; use org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package;

package body org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package is

   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package RelativeRelationship_Package renames Standard.org.allbinary.graphics.RelativeRelationship_Package;
   package RelativeLayerRelationship_Package renames Standard.org.allbinary.layer.relationship.RelativeLayerRelationship_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out FeaturedResourceRelativeRelationshipFactory'Class) is
   begin
      null;
      This.basicArrayListUtil := BasicArrayListUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out FeaturedResourceRelativeRelationshipFactory'Class) is
   begin
      FeaturedResourceFactory_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return FeaturedResourceRelativeRelationshipFactory_Access is
      This : constant FeaturedResourceRelativeRelationshipFactory_Access := new FeaturedResourceRelativeRelationshipFactory;
   begin
      FeaturedResourceRelativeRelationshipFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return FeaturedResourceRelativeRelationshipFactory_Access is
   begin
        return FeaturedResourceRelativeRelationshipFactory_Package.INSTANCE;
   end getInstance;

   --  throws Exception
   function getRelativeRelationshipList (This : in out FeaturedResourceRelativeRelationshipFactory; resource : Unbounded_String; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return BasicArrayList_Access is
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      featureReleaseList : BasicArrayList_Access;
      size : Integer;
      featureInterface : ResourceRelativeRelationshipFactoryInterface_Access;
      list : BasicArrayList_Access;
      index : Integer;
   begin
        featureReleaseList := FeaturedResourceRelativeRelationshipFactory'Class (This).getList;
        size := FeaturedResourceRelativeRelationshipFactory'Class (This).getList.size;
        for index in 0 .. (size) - 1 loop
            featureInterface := ResourceRelativeRelationshipFactoryInterface_Access (featureReleaseList.objectArray (index));
            if featureInterface.isFeature then
                list := featureInterface.getResourceRelativeRelationshipList (resource);
                if (list) /= (This.basicArrayListUtil.getImmutableInstance) then
                    return FeaturedResourceRelativeRelationshipFactory'Class (This).duplicate (list, layer);
                end if;
            end if;
        end loop;
        Java_Throw (Java_New_Exception ("Exception", StringMaker_Package.Create.append (To_Unbounded_String ("Not available for current feature selection or Resource: ")).append (resource).toString));
   end getRelativeRelationshipList;

   --  throws Exception
   function duplicate (This : in out FeaturedResourceRelativeRelationshipFactory; list_Param : access BasicArrayList_Package.BasicArrayList'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return BasicArrayList_Access is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      pointFactory : PointFactory_Access;
      newList : BasicArrayList_Access;
      size : Integer;
      relativeRelationship : RelativeRelationship_Access;
      index : Integer;
   begin
        pointFactory := PointFactory_Package.getInstance;
        newList := BasicArrayList_Access (BasicArrayListD_Package.Create);
        size := list.size;
        for index in 0 .. (size) - 1 loop
            relativeRelationship := RelativeRelationship_Access (list.objectArray (index));
            newList.add (Java_Object_Access (RelativeLayerRelationship_Package.Create (layer, pointFactory.createXY (relativeRelationship.getX, relativeRelationship.getY), BasicArrayListUtil_Package.getInstance.getImmutableInstance)));
        end loop;
        return newList;
   end duplicate;

   procedure getRelativeRelationshipList (This : in out FeaturedResourceRelativeRelationshipFactory; resource : Unbounded_String; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant BasicArrayList_Access := FeaturedResourceRelativeRelationshipFactory'Class (This).getRelativeRelationshipList (resource => resource, layer_Param => layer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRelativeRelationshipList;

   procedure duplicate (This : in out FeaturedResourceRelativeRelationshipFactory; list_Param : access BasicArrayList_Package.BasicArrayList'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant BasicArrayList_Access := FeaturedResourceRelativeRelationshipFactory'Class (This).duplicate (list_Param => list_Param, layer_Param => layer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end duplicate;

begin
   null;
   INSTANCE := FeaturedResourceRelativeRelationshipFactory_Package.Create;

end org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package;


