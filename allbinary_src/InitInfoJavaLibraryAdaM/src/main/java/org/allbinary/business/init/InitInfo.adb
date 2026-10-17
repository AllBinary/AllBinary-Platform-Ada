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


package body org.allbinary.business.init.InitInfo_Package is

   procedure Initialize_Fields (This : in out InitInfo'Class) is
   begin
      null;
      This.TESTING := To_Unbounded_String ("TESTING");
      This.MAINPATH := To_Unbounded_String ("MAINPATH");
      This.TESTHTMLPATH := To_Unbounded_String ("TESTHTMLPATH");
      This.testing_Case := Null_Unbounded_String;
      This.mainPath_Case := null;
      This.testHtmlPath_Case := null;
      This.hasRead := False;
   end Initialize_Fields;


   function getInstance return InitInfo_Access is
   begin
        return InitInfo_Package.instance;
   end getInstance;

   procedure Initialize (This : in out InitInfo'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InitInfo_Access is
      This : constant InitInfo_Access := new InitInfo;
   begin
      InitInfo_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws InitException
   procedure set (This : in out InitInfo) is
      initInfoEntity : InitInfoEntity_Access;
   begin
        begin
            initInfoEntity := InitInfoEntity_Package.Create;
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADER) then
                PreLogUtil_Package.put (To_Unbounded_String ("created entity"), To_Unbounded_String ("InitInfo"), To_Unbounded_String ("set()"));
            end if;
            if not (initInfoEntity.is_Id) then
                if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADER) then
                    PreLogUtil_Package.put (To_Unbounded_String ("adding"), To_Unbounded_String ("InitInfo"), To_Unbounded_String ("set()"));
                end if;
                initInfoEntity.add;
            else
                if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADER) then
                    PreLogUtil_Package.put (To_Unbounded_String ("update"), To_Unbounded_String ("InitInfo"), To_Unbounded_String ("set()"));
                end if;
                initInfoEntity.update;
            end if;
            This.hasRead := False;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADERERROR) then
                PreLogUtil_Package.putOE (To_Unbounded_String ("error"), To_Unbounded_String ("InitInfo"), To_Unbounded_String ("set()"), e);
            end if;
                end;
        end;
   end set;

   procedure set (This : in out InitInfo; hashMap_Param : access HashMap'Class) is
      hashMap : HashMap_Access := HashMap_Access (hashMap_Param);
   begin
        begin
            This.testing_Case := Unbounded_String (hashMap.get (This.TESTING));
            This.mainPath_Case := AbPath_Package.Create (Unbounded_String (hashMap.get (This.MAINPATH)), StringUtil_Package.getInstance.EMPTY_STRING);
            This.testHtmlPath_Case := AbPath_Package.Create (Unbounded_String (hashMap.get (This.TESTHTMLPATH)), StringUtil_Package.getInstance.EMPTY_STRING);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADERERROR) then
                PreLogUtil_Package.putOE (To_Unbounded_String ("error"), To_Unbounded_String ("InitInfo"), To_Unbounded_String ("set()"), e);
            end if;
                end;
        end;
   end set;

   procedure get (This : in out InitInfo) is
      initInfoEntity : InitInfoEntity_Access;
   begin
        begin
            This.testing_Case := Null_Unbounded_String;
            This.mainPath_Case := null;
            This.testHtmlPath_Case := null;
            initInfoEntity := InitInfoEntity_Package.Create;
            initInfoEntity.get;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADERERROR) then
                PreLogUtil_Package.putOE (To_Unbounded_String ("error"), To_Unbounded_String ("InitInfo"), To_Unbounded_String ("set()"), e);
            end if;
            return;
                end;
        end;
   end get;

   procedure setHasRead (This : in out InitInfo; value : Boolean) is
   begin
        This.hasRead := value;
   end setHasRead;

   procedure updateIfNeeded (This : in out InitInfo) is
   begin
        begin
            if not (This.hasRead) then
                This.hasRead := True;
                This.get;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADERERROR) then
                PreLogUtil_Package.putOE (To_Unbounded_String ("error"), To_Unbounded_String ("InitInfo"), To_Unbounded_String ("updateIfNeeded()"), e);
            end if;
            return;
                end;
        end;
   end updateIfNeeded;

   function isTesting (This : in out InitInfo) return Boolean is
   begin
        begin
            This.updateIfNeeded;
            return BooleanUtil_Package.getInstance.getFromString (This.testing_Case);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADERERROR) then
                PreLogUtil_Package.putOE (To_Unbounded_String ("error"), To_Unbounded_String ("InitInfo"), To_Unbounded_String ("updateIfNeeded()"), e);
            end if;
            return False;
                end;
        end;
   end isTesting;

   function getTesting (This : in out InitInfo) return Unbounded_String is
   begin
        This.updateIfNeeded;
        return This.testing_Case;
   end getTesting;

   function getTestHtmlPath (This : in out InitInfo) return Unbounded_String is
   begin
        This.updateIfNeeded;
        if (This.testHtmlPath_Case) /= (null) then
            return This.testHtmlPath_Case.toString;
        else
            return Null_Unbounded_String;
        end if;
   end getTestHtmlPath;

   function getMainPath (This : in out InitInfo) return Unbounded_String is
   begin
        This.updateIfNeeded;
        if (This.mainPath_Case) /= (null) then
            return This.mainPath_Case.toString;
        else
            return Null_Unbounded_String;
        end if;
   end getMainPath;

   procedure setTesting (This : in out InitInfo; value : Unbounded_String) is
   begin
        This.testing_Case := value;
   end setTesting;

   procedure setTestHtmlPath (This : in out InitInfo; value_Param : access AbPath'Class) is
      value : AbPath_Access := AbPath_Access (value_Param);
   begin
        This.testHtmlPath_Case := value;
   end setTestHtmlPath;

   procedure setMainPath (This : in out InitInfo; value_Param : access AbPath'Class) is
      value : AbPath_Access := AbPath_Access (value_Param);
   begin
        This.mainPath_Case := value;
   end setMainPath;

   function isMainPathValid (This : in out InitInfo; abPath_Param : access AbPath'Class) return Boolean is
      abPath : AbPath_Access := AbPath_Access (abPath_Param);
   begin
        return True;
   end isMainPathValid;

   function isTestHtmlPathValid (This : in out InitInfo; abPath_Param : access AbPath'Class) return Boolean is
      abPath : AbPath_Access := AbPath_Access (abPath_Param);
   begin
        return True;
   end isTestHtmlPathValid;

   --  throws Exception
   function isTestingValid (This : in out InitInfo; testing_Case : Unbounded_String) return Boolean is
   begin
        return BooleanUtil_Package.getInstance.isStringBoolean (testing_Case);
   end isTestingValid;

   function toHashMap (This : in out InitInfo) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (This.TESTING, This.getTesting);
        hashMap.put (This.MAINPATH, This.getMainPath);
        hashMap.put (This.TESTHTMLPATH, This.getTestHtmlPath);
        return hashMap;
   end toHashMap;

   procedure isMainPathValid (This : in out InitInfo; abPath_Param : access AbPath'Class) is
      Java_Result : constant Boolean := InitInfo'Class (This).isMainPathValid (abPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isMainPathValid;

   procedure isTestHtmlPathValid (This : in out InitInfo; abPath_Param : access AbPath'Class) is
      Java_Result : constant Boolean := InitInfo'Class (This).isTestHtmlPathValid (abPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTestHtmlPathValid;

   procedure isTestingValid (This : in out InitInfo; testing_Case : Unbounded_String) is
      Java_Result : constant Boolean := InitInfo'Class (This).isTestingValid (testing_Case);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTestingValid;

begin
   null;
   instance := InitInfo_Package.Create;

end org.allbinary.business.init.InitInfo_Package;


