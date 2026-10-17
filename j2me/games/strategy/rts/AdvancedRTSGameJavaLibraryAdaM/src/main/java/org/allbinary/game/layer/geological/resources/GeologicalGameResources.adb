-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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


package body org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package is

   procedure Initialize_Fields (This : in out GeologicalGameResources'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GeologicalGameResources'Class) is
      ROOT : Unbounded_String;
      SMALL : Unbounded_String;
      MEDIUM : Unbounded_String;
      SIZE_FOUR : Unbounded_String;
      SIZE_FIVE : Unbounded_String;
      SIZE_SIX : Unbounded_String;
      SIZE : Unbounded_String_Array_Access;
   begin
      BasicGameResources_Package.Initialize (This);
      Initialize_Fields (This);
        ROOT := To_Unbounded_String ("/resource");
        SMALL := To_Unbounded_String ("_20_by_20.png");
        MEDIUM := SMALL;
        SIZE_FOUR := SMALL;
        SIZE_FIVE := SMALL;
        SIZE_SIX := SMALL;
        SIZE := new Unbounded_String_Array'(SMALL, MEDIUM, SIZE_FOUR, SIZE_FIVE, SIZE_SIX);
        BasicGameResources (This).init (ROOT, SIZE);
   end Initialize;

   function Create return GeologicalGameResources_Access is
      This : constant GeologicalGameResources_Access := new GeologicalGameResources;
   begin
      GeologicalGameResources_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure append (This : in out GeologicalGameResources; ROOT : Unbounded_String; sizeString : Unbounded_String) is
   begin
        BasicGameResources (This).append (ROOT, sizeString);
   end append;

   --  throws Exception
   function getString (This : in out GeologicalGameResources) return Unbounded_String is
   begin
        if AndroidUtil_Package.isAndroid then
            return GameGraphicsResourceUtil_Package.getInstance.getStringForFeature (GraphicsFeatureFactory_Package.getInstance.SPRITE_QUARTER_ROTATION_GRAPHICS);
        else
            return BasicGameResources (This).getString;
        end if;
   end getString;

   function getInstance return BasicGameResources_Access is
   begin
        return GeologicalGameResources_Package.instance;
   end getInstance;

begin
   null;
   instance := GeologicalGameResources_Package.Create;

end org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package;


