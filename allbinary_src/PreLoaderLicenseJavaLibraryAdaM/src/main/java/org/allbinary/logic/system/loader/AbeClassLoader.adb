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


package body org.allbinary.logic.system.loader.AbeClassLoader_Package is

   procedure Initialize_Fields (This : in out AbeClassLoader'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.abCryptUtil := AbCryptUtil_Package.getInstance;
      This.LOAD_CLASS := To_Unbounded_String ("loadClass");
      This.ENCRYPTED_EXTENSION := Java_Image (AbPathData_Package.getInstance.EXTENSION_SEP) & To_Unbounded_String ("abc");
      
   end Initialize_Fields;


   procedure Initialize (This : in out AbeClassLoader'Class; parent_Param : access ClassLoader'Class; key : Unbounded_String) is
      parent : ClassLoader_Access := ClassLoader_Access (parent_Param);
   begin
        ClassLoader_Package.Initialize (This, parent);
        Initialize_Fields (This);
        This.key := key;
        AbeClassLoader_Package.PATH := Java_Image (org_Package.allbinary.globals.URLGLOBALS.getWebappPath) & To_Unbounded_String ("WEB-INF/classes/");
   end Initialize;

   function Create (parent_Param : access ClassLoader'Class; key : Unbounded_String) return AbeClassLoader_Access is
      This : constant AbeClassLoader_Access := new AbeClassLoader;
   begin
      AbeClassLoader_Package.Initialize (This.all, parent_Param, key);
      return This;
   end Create;

   function findLoadedClass1 (This : in out AbeClassLoader; name : Unbounded_String) return Ada.Tags.Tag is
   begin
        return Ada.Tags.Tag (AbeClassLoader_Package.classes.get (name));
   end findLoadedClass1;

   --  throws ClassNotFoundException
   function loadClass (This : in out AbeClassLoader; name : Unbounded_String) return Ada.Tags.Tag is
   begin
        return This.loadClass (name, False);
   end loadClass;

   --  throws ClassNotFoundException
   function loadClass (This : in out AbeClassLoader; name : Unbounded_String; resolve : Boolean) return Ada.Tags.Tag is
      loadedWith : Unbounded_String;
      logBuffer : LogBuffer_Access;
      myClass : Ada.Tags.Tag;
      normalClass : Ada.Tags.Tag;
      classBytes : Short_Short_Integer_Array_Access;
   begin
        loadedWith := To_Unbounded_String ("findLoadedClass1");
        logBuffer := LogBuffer_Package.Create;
        begin
            myClass := This.findLoadedClass1 (name);
            if (myClass) = (null) then
                begin
                    loadedWith := To_Unbounded_String ("super.loadClass");
                    normalClass := ClassLoader (This).loadClass (name, resolve);
                    if (normalClass) /= (null) then
                        return normalClass;
                    end if;
                exception
                    when Java_Occurrence : others =>
                        declare
                            e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                        begin
                    logBuffer.add (LogFactory_Package.getInstance (To_Unbounded_String ("Failed to Load Class: ") & name & To_Unbounded_String ("" & ASCII.LF & "with: ") & loadedWith, AbeClassLoader_Access'(This'Unchecked_Access), This.LOAD_CLASS, e));
                        end;
                end;
                classBytes := This.loadClassBytesFromFile (name);
                if (classBytes) = (null) then
                    Java_Throw (Java_New_Exception ("ClassNotFoundException", To_Unbounded_String ("My Bytes not loaded for: ") & name & To_Unbounded_String ("" & ASCII.LF & "with: ") & To_Unbounded_String ("loadClassBytes")));
                end if;
                myClass := This.defineClass (name, classBytes, 0, classBytes'Length);
                if (myClass) = (null) then
                    Java_Throw (Java_New_Exception ("ClassNotFoundException", To_Unbounded_String ("My Class Not Defineable for: ") & name & To_Unbounded_String ("" & ASCII.LF & "with: ") & To_Unbounded_String ("loadClassBytes")));
                end if;
                AbeClassLoader_Package.classes.put (name, myClass);
            else
                logBuffer.add (LogFactory_Package.getInstanceF (To_Unbounded_String ("Already Loaded: ") & name & To_Unbounded_String ("" & ASCII.LF & "with: ") & loadedWith, AbeClassLoader_Access'(This'Unchecked_Access), This.LOAD_CLASS));
            end if;
            This.resolveClass (myClass);
            return myClass;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.LOADERERROR) then
                logBuffer.logAll;
                This.logUtil.put (To_Unbounded_String ("Failure loading: ") & name & To_Unbounded_String ("" & ASCII.LF & "with: ") & loadedWith, AbeClassLoader_Access'(This'Unchecked_Access), This.LOAD_CLASS, e);
            end if;
            return null;
                end;
        end;
   end loadClass;

   function loadClassBytesFromFile (This : in out AbeClassLoader; name : Unbounded_String) return Short_Short_Integer_Array_Access is
      in_Id : FileInputStream_Access;
      cname : Unbounded_String;
      decrypted : Short_Short_Integer_Array_Access;
      loadedWith : Unbounded_String;
   begin
        in_Id := null;
        cname := StringUtil_Package.getInstance.EMPTY_STRING;
        begin
            cname := Java_Image (AbeClassLoader_Package.PATH) & name.replace ('.', AbPathData_Package.getInstance.SEPARATORCHAR) & This.ENCRYPTED_EXTENSION;
            in_Id := FileInputStream_Package.Create (cname);
            decrypted := This.abCryptUtil.decrypt (in_Id, This.key);
            return decrypted;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.LOADERERROR) then
                This.logUtil.put (To_Unbounded_String ("(Before LogBuffer Output) Failure loading Encrypted: ") & name & To_Unbounded_String (" File: ") & cname, To_Unbounded_String ("AbeClassLoader"), To_Unbounded_String ("loadClassBytes"), e);
            end if;
            StreamUtil_Package.getInstance.close (in_Id);
                end;
        end;
        return null;
   end loadClassBytesFromFile;

   --  throws ClassNotFoundException
   function oldLoadClass (This : in out AbeClassLoader; name : Unbounded_String; resolve : Boolean) return Ada.Tags.Tag is
      loadedWith : Unbounded_String;
      myClass : Ada.Tags.Tag;
      normalClass : Ada.Tags.Tag;
      classBytes : Short_Short_Integer_Array_Access;
   begin
        loadedWith := To_Unbounded_String ("findLoadedClass1");
        begin
            myClass := This.findLoadedClass1 (name);
            if (myClass) = (null) then
                begin
                    loadedWith := To_Unbounded_String ("super.loadClass");
                    normalClass := ClassLoader (This).loadClass (name, resolve);
                    if (normalClass) /= (null) then
                        return normalClass;
                    end if;
                exception
                    when Java_Occurrence : others =>
                        declare
                            e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                        begin
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.LOADER) then
                        This.logUtil.putF (To_Unbounded_String ("Failed Loaded Class: ") & name & To_Unbounded_String (" with: ") & loadedWith, AbeClassLoader_Access'(This'Unchecked_Access), This.LOAD_CLASS);
                    end if;
                        end;
                end;
                loadedWith := To_Unbounded_String ("loadClassBytes");
                classBytes := This.loadClassBytesFromFile (name);
                if (classBytes) = (null) then
                    Java_Throw (Java_New_Exception ("ClassNotFoundException", To_Unbounded_String ("Bytes not loaded for: ") & name));
                end if;
                myClass := This.defineClass (name, classBytes, 0, classBytes'Length);
                if (myClass) = (null) then
                    Java_Throw (Java_New_Exception ("ClassNotFoundException", To_Unbounded_String ("Class Not Defineable for: ") & name));
                end if;
                AbeClassLoader_Package.classes.put (name, myClass);
            else
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.LOADER) then
                    This.logUtil.putF (To_Unbounded_String ("Already Loaded: ") & name & To_Unbounded_String (" with: ") & loadedWith, AbeClassLoader_Access'(This'Unchecked_Access), This.LOAD_CLASS);
                end if;
            end if;
            This.resolveClass (myClass);
            return myClass;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.LOADERERROR) then
                This.logUtil.put (To_Unbounded_String ("Failure loading: ") & name, To_Unbounded_String ("AbeClassLoader"), This.LOAD_CLASS, e);
            end if;
            return null;
                end;
        end;
   end oldLoadClass;

   procedure findLoadedClass1 (This : in out AbeClassLoader; name : Unbounded_String) is
      Java_Result : constant Ada.Tags.Tag := AbeClassLoader'Class (This).findLoadedClass1 (name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end findLoadedClass1;

   procedure loadClass (This : in out AbeClassLoader; name : Unbounded_String) is
      Java_Result : constant Ada.Tags.Tag := AbeClassLoader'Class (This).loadClass (name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end loadClass;

   procedure loadClass (This : in out AbeClassLoader; name : Unbounded_String; resolve : Boolean) is
      Java_Result : constant Ada.Tags.Tag := AbeClassLoader'Class (This).loadClass (name, resolve);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end loadClass;

   procedure loadClassBytesFromFile (This : in out AbeClassLoader; name : Unbounded_String) is
      Java_Result : constant Short_Short_Integer_Array_Access := AbeClassLoader'Class (This).loadClassBytesFromFile (name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end loadClassBytesFromFile;

   procedure oldLoadClass (This : in out AbeClassLoader; name : Unbounded_String; resolve : Boolean) is
      Java_Result : constant Ada.Tags.Tag := AbeClassLoader'Class (This).oldLoadClass (name, resolve);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end oldLoadClass;

begin
   null;
   classes := StdUtil_Package.getInstance.createHashMap;
   PATH := Null_Unbounded_String;

end org.allbinary.logic.system.loader.AbeClassLoader_Package;


