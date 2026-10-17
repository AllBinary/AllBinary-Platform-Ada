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


package body org.allbinary.game.resource.ResourceLoadingLevel_Package is

   procedure Initialize_Fields (This : in out ResourceLoadingLevel'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out ResourceLoadingLevel'Class; name : Unbounded_String; level : Integer) is
   begin
      Initialize_Fields (This);
        This.name := name;
        This.level := level;
   end Initialize;

   function Create (name : Unbounded_String; level : Integer) return ResourceLoadingLevel_Access is
      This : constant ResourceLoadingLevel_Access := new ResourceLoadingLevel;
   begin
      ResourceLoadingLevel_Package.Initialize (This.all, name, level);
      return This;
   end Create;

   function getLevel (This : in out ResourceLoadingLevel) return Integer is
   begin
        return This.level;
   end getLevel;

   function getName (This : in out ResourceLoadingLevel) return Unbounded_String is
   begin
        return This.name;
   end getName;

end org.allbinary.game.resource.ResourceLoadingLevel_Package;


