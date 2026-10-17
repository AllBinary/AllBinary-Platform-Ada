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


package body org.allbinary.logic.system.loader.AbeFactory_Package is

   procedure Initialize_Fields (This : in out AbeFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.useCustomLoader := False;
   end Initialize_Fields;


   function getInstance return AbeFactory_Access is
   begin
        return AbeFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AbeFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AbeFactory_Access is
      This : constant AbeFactory_Access := new AbeFactory;
   begin
      AbeFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws LicensingException
   function getInstance (This : in out AbeFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; className : Unbounded_String) return Java_Object_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
   begin
        begin
            return This.getClass (abeClientInformation, className).newInstance;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.LOADERERROR) then
                This.logUtil.put (To_Unbounded_String ("Failure for: ") & className, AbeFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(classname)"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   --  throws LicensingException
   function getInstance (This : in out AbeFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; className : Unbounded_String; classes : Ada_Tags_Tag_Array_Access; params : Java_Object_Access_Array_Access) return Java_Object_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      constructor : Constructor_Access;
      parent : ClassLoader_Access;
      myClass : Ada.Tags.Tag;
      loader : ClassLoader_Access;
      stringBuffer : StringMaker_Access;
   begin
        constructor := null;
        begin
            parent := WebappClassLoaderInfo_Package.getLoader;
            if This.useCustomLoader then
                loader := AbeClassLoader_Package.Create (parent, AbKeys_Package.getInstance.getKey (abeClientInformation, className));
                myClass := loader.loadClass (className);
                constructor := myClass.getConstructor (classes);
                return constructor.newInstance (params);
            else
                myClass := parent.loadClass (className);
                constructor := myClass.getConstructor (classes);
                return constructor.newInstance (params);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.LOADERERROR) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Failure for: "));
                stringBuffer.append (className);
                stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
                stringBuffer.append (ConstructorUtil_Package.view (constructor, CommonSeps_Package.getInstance.NEW_LINE));
                This.logUtil.put (stringBuffer.toString, AbeFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(className,params)"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   --  throws LicensingException
   function getClass (This : in out AbeFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; className : Unbounded_String) return Ada.Tags.Tag is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      parent : ClassLoader_Access;
      c : Ada.Tags.Tag;
      loader : ClassLoader_Access;
   begin
        begin
            parent := WebappClassLoaderInfo_Package.getLoader;
            if This.useCustomLoader then
                loader := AbeClassLoader_Package.Create (parent, AbKeys_Package.getInstance.getKey (abeClientInformation, className));
                c := loader.loadClass (className);
                return c;
            else
                c := parent.loadClass (className);
                return c;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.LOADERERROR) then
                This.logUtil.put (To_Unbounded_String ("Failure for: ") & className, AbeFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getClass(className)"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getClass;

   procedure getInstance (This : in out AbeFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; className : Unbounded_String) is
      Java_Result : constant Java_Object_Access := AbeFactory'Class (This).getInstance (abeClientInformation_Param, className);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out AbeFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; className : Unbounded_String; classes : Ada_Tags_Tag_Array_Access; params : Java_Object_Access_Array_Access) is
      Java_Result : constant Java_Object_Access := AbeFactory'Class (This).getInstance (abeClientInformation_Param, className, classes, params);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getClass (This : in out AbeFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; className : Unbounded_String) is
      Java_Result : constant Ada.Tags.Tag := AbeFactory'Class (This).getClass (abeClientInformation_Param, className);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getClass;

begin
   null;
   instance := AbeFactory_Package.Create;

end org.allbinary.logic.system.loader.AbeFactory_Package;


