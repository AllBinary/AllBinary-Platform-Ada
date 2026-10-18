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


with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.game.resource.ResourceLoadingLevelFactory_Package; use org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
with org.allbinary.graphics.RectangleFactory_Package; use org.allbinary.graphics.RectangleFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package is

   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package ResourceLoadingLevelFactory_Package renames Standard.org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
   package RectangleFactory_Package renames Standard.org.allbinary.graphics.RectangleFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      
      
      This.initialized := False;
   end Initialize_Fields;


   procedure Initialize (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory'Class; name : Unbounded_String; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; rectangleHashtable_Param : access ABHashtable_Package.ABHashtable'Class; rectangleArrayHashtable_Param : access ABHashtable_Package.ABHashtable'Class) is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      rectangleHashtable : constant ABHashtable_Access := ABHashtable_Access (rectangleHashtable_Param);
      rectangleArrayHashtable : constant ABHashtable_Access := ABHashtable_Access (rectangleArrayHashtable_Param);
   begin
      Initialize_Fields (This);
        This.hashtable := hashtable;
        This.rectangleHashtable := rectangleHashtable;
        This.rectangleArrayOfArraysHashtable := rectangleArrayHashtable;
        This.name := name;
   end Initialize;

   function Create (name : Unbounded_String; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; rectangleHashtable_Param : access ABHashtable_Package.ABHashtable'Class; rectangleArrayHashtable_Param : access ABHashtable_Package.ABHashtable'Class) return BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access is
      This : constant BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access := new BaseResourceAnimationInterfaceFactoryInterfaceFactory;
   begin
      BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package.Initialize (This.all, name, hashtable_Param, rectangleHashtable_Param, rectangleArrayHashtable_Param);
      return This;
   end Create;

   function getName (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory) return Unbounded_String is
   begin
        return This.name;
   end getName;

   --  throws Exception
   procedure init (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; level : Integer) is
      commonStrings : CommonStrings_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Available List of Animations: ")).append (This.hashtable.toString).toString, BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access'(This'Unchecked_Access), commonStrings.INIT);
        BaseResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).setInitialized (True);
   end init;

   --  throws Exception
   procedure initImageCache (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; imageCache_Param : access ImageCache_Package.ImageCache'Class; level : Integer) is
      imageCache : constant ImageCache_Access := ImageCache_Access (imageCache_Param);
   begin
        null;
   end initImageCache;

   --  throws Exception
   procedure add (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String; animationInterfaceFactoryInterface_Param : access BasicAnimationInterfaceFactoryInterface_Package.BasicAnimationInterfaceFactoryInterface'Class) is
      animationInterfaceFactoryInterface : constant BasicAnimationInterfaceFactoryInterface_Access := BasicAnimationInterfaceFactoryInterface_Access (animationInterfaceFactoryInterface_Param);
   begin
        if This.hashtable.containsKey (Java_Box (resource)) then
            Java_Throw (Java_New_Exception ("Exception", StringMaker_Package.Create.append (To_Unbounded_String ("Resource Already Created: ")).append (resource).toString));
        end if;
        This.hashtable.put (resource, animationInterfaceFactoryInterface);
   end add;

   --  throws Exception
   function getBasicAnimationInterfaceFactoryInstance (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String) return BasicAnimationInterfaceFactoryInterface_Access is
      basicAnimationInterfaceFactoryInterfaceCanBeNull : Java_Object_Access;
   begin
        basicAnimationInterfaceFactoryInterfaceCanBeNull := This.hashtable.get (resource);
        if (basicAnimationInterfaceFactoryInterfaceCanBeNull) = (null) then
            return NullAnimationFactory_Package.NULL_NOT_FOR_USE_ANIMATION_FACTORY;
        end if;
        return BasicAnimationInterfaceFactoryInterface_Access (basicAnimationInterfaceFactoryInterfaceCanBeNull);
   end getBasicAnimationInterfaceFactoryInstance;

   --  throws Exception
   function getRectangle (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String) return Rectangle_Access is
      rectangleCanBeNull : Java_Object_Access;
   begin
        rectangleCanBeNull := This.rectangleHashtable.get (resource);
        if (rectangleCanBeNull) = (null) then
            return RectangleFactory_Package.SINGLETON;
        end if;
        return Rectangle_Access (rectangleCanBeNull);
   end getRectangle;

   --  throws Exception
   procedure addRectangle (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String; rectangle_Param : access Rectangle_Package.Rectangle'Class) is
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
   begin
        This.rectangleHashtable.put (resource, rectangle);
   end addRectangle;

   --  throws Exception
   function getRectangleArrayOfArrays (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String) return Rectangle_Access_Array_Access_Array_Access is
   begin
        return Rectangle_Access_Array_Access_Array_Access (This.rectangleArrayOfArraysHashtable.get (resource));
   end getRectangleArrayOfArrays;

   --  throws Exception
   procedure addRectangleArrayOfArrays (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String; rectangleArrayOfArrays : Rectangle_Access_Array_Access_Array_Access) is
   begin
        This.rectangleArrayOfArraysHashtable.put (resource, rectangleArrayOfArrays);
   end addRectangleArrayOfArrays;

   function isFeature (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory) return Boolean is
   begin
        return False;
   end isFeature;

   function isLoadingLevel (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; level : Integer) return Boolean is
      resourceLoadingLevelFactory : ResourceLoadingLevelFactory_Access;
   begin
        resourceLoadingLevelFactory := ResourceLoadingLevelFactory_Package.getInstance;
        if (level) = (resourceLoadingLevelFactory.LOAD_ALL.getLevel) then
            return True;
        else
            return False;
        end if;
   end isLoadingLevel;

   function toString (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag))).append (CommonSeps_Package.getInstance.SEMICOLON).append (CommonSeps_Package.getInstance.SPACE).append (This.name).toString;
   end toString;

   function getHashtable (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory) return ABHashtable_Access is
   begin
        return This.hashtable;
   end getHashtable;

   function getRectangleHashtable (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory) return ABHashtable_Access is
   begin
        return This.rectangleHashtable;
   end getRectangleHashtable;

   function getRectangleArrayOfArraysHashtable (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory) return ABHashtable_Access is
   begin
        return This.rectangleArrayOfArraysHashtable;
   end getRectangleArrayOfArraysHashtable;

   procedure setInitialized (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; initialized : Boolean) is
   begin
        This.initialized := initialized;
   end setInitialized;

   function isInitialized (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory) return Boolean is
   begin
        return This.initialized;
   end isInitialized;

   procedure getBasicAnimationInterfaceFactoryInstance (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String) is
      Java_Result : constant BasicAnimationInterfaceFactoryInterface_Access := BaseResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).getBasicAnimationInterfaceFactoryInstance (resource);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBasicAnimationInterfaceFactoryInstance;

   procedure getRectangle (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String) is
      Java_Result : constant Rectangle_Access := BaseResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).getRectangle (resource);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRectangle;

   procedure getRectangleArrayOfArrays (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String) is
      Java_Result : constant Rectangle_Access_Array_Access_Array_Access := BaseResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).getRectangleArrayOfArrays (resource);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRectangleArrayOfArrays;

   procedure isLoadingLevel (This : in out BaseResourceAnimationInterfaceFactoryInterfaceFactory; level : Integer) is
      Java_Result : constant Boolean := BaseResourceAnimationInterfaceFactoryInterfaceFactory'Class (This).isLoadingLevel (level);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isLoadingLevel;

end org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package;


