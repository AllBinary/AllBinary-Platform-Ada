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


package body org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package is

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
   function getRelativeRelationshipList (This : in out FeaturedResourceRelativeRelationshipFactory; resource : Unbounded_String; layer : AllBinaryLayer_Access) return BasicArrayList_Access is
      featureReleaseList : BasicArrayList_Access;
      size : Integer;
      featureInterface : ResourceRelativeRelationshipFactoryInterface_Access;
      list : BasicArrayList_Access;
      index : Integer;
   begin
        featureReleaseList := This.getList;
        size := This.getList.size;
        for index in 0 .. (size) - 1 loop
            featureInterface := ResourceRelativeRelationshipFactoryInterface_Access (featureReleaseList.objectArray (index));
            if featureInterface.isFeature then
                list := featureInterface.getResourceRelativeRelationshipList (resource);
                if (list) /= (This.basicArrayListUtil.getImmutableInstance) then
                    return This.duplicate (list, layer);
                end if;
            end if;
        end loop;
        Java_Throw (Java_New_Exception ("Exception", StringMaker_Package.Create.append (To_Unbounded_String ("Not available for current feature selection or Resource: ")).append (resource).toString));
   end getRelativeRelationshipList;

   --  throws Exception
   function duplicate (This : in out FeaturedResourceRelativeRelationshipFactory; list : BasicArrayList_Access; layer : AllBinaryLayer_Access) return BasicArrayList_Access is
      pointFactory : PointFactory_Access;
      newList : BasicArrayList_Access;
      size : Integer;
      relativeRelationship : RelativeRelationship_Access;
      index : Integer;
   begin
        pointFactory := PointFactory_Package.getInstance;
        newList := BasicArrayListD_Package.Create;
        size := list.size;
        for index in 0 .. (size) - 1 loop
            relativeRelationship := RelativeRelationship_Access (list.objectArray (index));
            newList.add (RelativeLayerRelationship_Package.Create (layer, pointFactory.createXY (relativeRelationship.getX, relativeRelationship.getY), BasicArrayListUtil_Package.getInstance.getImmutableInstance));
        end loop;
        return newList;
   end duplicate;

   procedure getRelativeRelationshipList (This : in out FeaturedResourceRelativeRelationshipFactory; resource : Unbounded_String; layer : AllBinaryLayer_Access) is
      Java_Result : constant BasicArrayList_Access := FeaturedResourceRelativeRelationshipFactory'Class (This).getRelativeRelationshipList (resource, layer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRelativeRelationshipList;

   procedure duplicate (This : in out FeaturedResourceRelativeRelationshipFactory; list : BasicArrayList_Access; layer : AllBinaryLayer_Access) is
      Java_Result : constant BasicArrayList_Access := FeaturedResourceRelativeRelationshipFactory'Class (This).duplicate (list, layer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end duplicate;

begin
   null;
   INSTANCE := FeaturedResourceRelativeRelationshipFactory_Package.Create;

end org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package;


