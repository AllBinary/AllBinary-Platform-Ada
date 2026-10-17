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


package body org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory'Class) is
   begin
      FeaturedResourceFactory_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return FeaturedAnimationInterfaceFactoryInterfaceFactory_Access is
      This : constant FeaturedAnimationInterfaceFactoryInterfaceFactory_Access := new FeaturedAnimationInterfaceFactoryInterfaceFactory;
   begin
      FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return FeaturedAnimationInterfaceFactoryInterfaceFactory_Access is
   begin
        return FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.INSTANCE;
   end getInstance;

   --  throws Exception
   function getRectangle (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String) return Rectangle_Access is
   begin
        return This.getRectangleXY (resource, 0, 0);
   end getRectangle;

   --  throws Exception
   function getRectangleXY (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String; x : Integer; y : Integer) return Rectangle_Access is
      pointFactory : PointFactory_Access;
      list : BasicArrayList_Access;
      scale : Integer;
      size : Integer;
      featureInterface : FeatureResourceAnimationInterfaceFactoryInterface_Access;
      rectangle : Rectangle_Access;
      index : Integer;
   begin
        pointFactory := PointFactory_Package.getInstance;
        list := This.getList;
        scale := GameConfigurationCentral_Package.getInstance.SCALE.getValue.intValue;
        size := This.getList.size;
        for index in 0 .. (size) - 1 loop
            featureInterface := FeatureResourceAnimationInterfaceFactoryInterface_Access (list.objectArray (index));
            if featureInterface.isFeature then
                rectangle := featureInterface.getRectangle (resource);
                if (rectangle) /= (RectangleFactory_Package.SINGLETON) then
                    return Rectangle_Package.Create (pointFactory.createXY (x, y), (Java_Shift_Right_Arithmetic (((rectangle.getWidth) * (scale)), 1)), (Java_Shift_Right_Arithmetic (((rectangle.getHeight) * (scale)), 1)));
                end if;
            end if;
        end loop;
        Java_Throw (Java_New_Exception ("Exception", StringMaker_Package.Create.append (To_Unbounded_String ("No rectangle available for current feature selection or Resource: ")).append (resource).toString));
   end getRectangleXY;

   --  throws Exception
   function getProcedural (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String) return ProceduralAnimationInterfaceFactoryInterface_Access is
   begin
        return ProceduralAnimationInterfaceFactoryInterface_Access (This.getBasicAnimationInterfaceFactoryInstance (resource));
   end getProcedural;

   --  throws Exception
   function get (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String) return AnimationInterfaceFactoryInterface_Access is
   begin
        return AnimationInterfaceFactoryInterface_Access (This.getBasicAnimationInterfaceFactoryInstance (resource));
   end get;

   --  throws Exception
   function getBasicAnimationInterfaceFactoryInstance (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String) return BasicAnimationInterfaceFactoryInterface_Access is
      list : BasicArrayList_Access;
      resourceTypeAvailableList : BasicArrayList_Access;
      size : Integer;
      featureInterface : FeatureResourceAnimationInterfaceFactoryInterface_Access;
      animationInterfaceFactoryInterface : BasicAnimationInterfaceFactoryInterface_Access;
      index : Integer;
      stringBuffer : StringMaker_Access;
      result : Unbounded_String;
      NO_ANIMATION_AVAILABLE_FROM : Unbounded_String;
      FOR_FACTORIES : Unbounded_String;
      FOR_RESOURCE : Unbounded_String;
      HAS_KEY : Unbounded_String;
      RESOURCES_LABEL : Unbounded_String;
      size2 : Integer;
   begin
        list := This.getList;
        resourceTypeAvailableList := BasicArrayListD_Package.Create;
        size := This.getList.size;
        featureInterface := null;
        animationInterfaceFactoryInterface := null;
        for index in 0 .. (size) - 1 loop
            featureInterface := FeatureResourceAnimationInterfaceFactoryInterface_Access (list.objectArray (index));
            if featureInterface.isFeature then
                resourceTypeAvailableList.add (featureInterface);
                animationInterfaceFactoryInterface := featureInterface.getBasicAnimationInterfaceFactoryInstance (resource);
                if (animationInterfaceFactoryInterface) /= (NullAnimationFactory_Package.NULL_NOT_FOR_USE_ANIMATION_FACTORY) then
                    return animationInterfaceFactoryInterface;
                end if;
            end if;
        end loop;
        if (resourceTypeAvailableList.size) > (0) then
            NO_ANIMATION_AVAILABLE_FROM := To_Unbounded_String ("No animation available from: ");
            FOR_FACTORIES := To_Unbounded_String (" factories: ");
            FOR_RESOURCE := To_Unbounded_String (" for Resource: ");
            HAS_KEY := To_Unbounded_String (" has: ");
            RESOURCES_LABEL := To_Unbounded_String (" resources ");
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (NO_ANIMATION_AVAILABLE_FROM);
            stringBuffer.appendint (resourceTypeAvailableList.size);
            stringBuffer.append (CommonSeps_Package.getInstance.FORWARD_SLASH);
            stringBuffer.appendint (size);
            stringBuffer.append (FOR_FACTORIES);
            size2 := resourceTypeAvailableList.size;
            for index in 0 .. (size2) - 1 loop
                stringBuffer.append (resourceTypeAvailableList.get (index).toString);
                stringBuffer.append (CommonSeps_Package.getInstance.COMMA_SEP);
            end loop;
            stringBuffer.append (FOR_RESOURCE);
            stringBuffer.append (resource);
            for index in 0 .. (size) - 1 loop
                stringBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
                featureInterface := FeatureResourceAnimationInterfaceFactoryInterface_Access (list.objectArray (index));
                if featureInterface.isFeature then
                    stringBuffer.append (StringUtil_Package.getInstance.toString (featureInterface));
                    stringBuffer.append (HAS_KEY);
                    stringBuffer.appendint (featureInterface.getHashtable.size);
                    stringBuffer.append (RESOURCES_LABEL);
                end if;
            end loop;
            Java_Throw (Java_New_Exception ("Exception", stringBuffer.toString));
        else
            stringBuffer := StringMaker_Package.Create;
            for index in 0 .. (size) - 1 loop
                featureInterface := FeatureResourceAnimationInterfaceFactoryInterface_Access (list.objectArray (index));
                stringBuffer.append (featureInterface.toString);
                stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
            end loop;
            result := stringBuffer.toString;
            stringBuffer.delete (0, stringBuffer.length);
            Java_Throw (Java_New_Exception ("Exception", stringBuffer.append (To_Unbounded_String ("No feature resource type available for Resource: ")).append (resource).append (To_Unbounded_String (" Resource Factories Available: ")).append (result).toString));
        end if;
   end getBasicAnimationInterfaceFactoryInstance;

   procedure getRectangle (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String) is
      Java_Result : constant Rectangle_Access := FeaturedAnimationInterfaceFactoryInterfaceFactory'Class (This).getRectangle (resource);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRectangle;

   procedure getRectangleXY (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String; x : Integer; y : Integer) is
      Java_Result : constant Rectangle_Access := FeaturedAnimationInterfaceFactoryInterfaceFactory'Class (This).getRectangleXY (resource, x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRectangleXY;

   procedure getProcedural (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String) is
      Java_Result : constant ProceduralAnimationInterfaceFactoryInterface_Access := FeaturedAnimationInterfaceFactoryInterfaceFactory'Class (This).getProcedural (resource);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getProcedural;

   procedure get (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String) is
      Java_Result : constant AnimationInterfaceFactoryInterface_Access := FeaturedAnimationInterfaceFactoryInterfaceFactory'Class (This).get (resource);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getBasicAnimationInterfaceFactoryInstance (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String) is
      Java_Result : constant BasicAnimationInterfaceFactoryInterface_Access := FeaturedAnimationInterfaceFactoryInterfaceFactory'Class (This).getBasicAnimationInterfaceFactoryInstance (resource);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBasicAnimationInterfaceFactoryInstance;

begin
   null;
   INSTANCE := FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.Create;

end org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;


