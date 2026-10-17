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


package body org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package is

   procedure Initialize_Fields (This : in out LogConfigType'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out LogConfigType'Class; name : Unbounded_String; description : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := name;
        This.description := description;
        LogConfigType_Package.availableLogConfigTypes.add (LogConfigType_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (name : Unbounded_String; description : Unbounded_String) return LogConfigType_Access is
      This : constant LogConfigType_Access := new LogConfigType;
   begin
      LogConfigType_Package.Initialize (This.all, name, description);
      return This;
   end Create;

   function getName (This : in out LogConfigType) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function getDescription (This : in out LogConfigType) return Unbounded_String is
   begin
        return This.description;
   end getDescription;

   procedure setName (This : in out LogConfigType; value : Unbounded_String) is
   begin
        This.name := value;
   end setName;

   procedure setDescription (This : in out LogConfigType; value : Unbounded_String) is
   begin
        This.description := value;
   end setDescription;

begin
   null;
   availableLogConfigTypes := BasicArrayListD_Package.Create;

end org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package;


