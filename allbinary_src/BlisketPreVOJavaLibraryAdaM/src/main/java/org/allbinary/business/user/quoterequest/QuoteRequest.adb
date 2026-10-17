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


package body org.allbinary.business.user.quoterequest.QuoteRequest_Package is

   procedure Initialize_Fields (This : in out QuoteRequest'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.userName := Null_Unbounded_String;
      This.projectInfo := Null_Unbounded_String;
      This.userComments := Null_Unbounded_String;
      This.budget := Null_Unbounded_String;
      This.timeFrame := Null_Unbounded_String;
      This.comments := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out QuoteRequest'Class; userName : Unbounded_String; request : HttpServletRequest_Access) is
      quoteRequestData : QuoteRequestData_Access;
   begin
      Initialize_Fields (This);
        quoteRequestData := QuoteRequestData_Package.getInstance;
        This.id := QuoteRequestIdGenerator_Package.Create.getNext;
        This.setUserName (userName);
        This.setProjectInfo (Unbounded_String (request.getParameter (quoteRequestData.PROJECT_INFO)));
        This.setUserComments (Unbounded_String (request.getParameter (quoteRequestData.CUSTOMER_COMMENTS)));
        This.setBudget (Unbounded_String (request.getParameter (quoteRequestData.BUDGET)));
        This.setTimeFrame (Unbounded_String (request.getParameter (quoteRequestData.TIMEFRAME)));
        This.setComments (Unbounded_String (request.getParameter (quoteRequestData.COMMENTS)));
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
            This.logUtil.putF (To_Unbounded_String ("Created with: ") & Java_Image (This.toHashMap), This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (userName : Unbounded_String; request : HttpServletRequest_Access) return QuoteRequest_Access is
      This : constant QuoteRequest_Access := new QuoteRequest;
   begin
      Initialize (This.all, userName, request);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out QuoteRequest'Class; hashMap : HashMap_Access) is
      quoteRequestData : QuoteRequestData_Access;
   begin
      Initialize_Fields (This);
        quoteRequestData := QuoteRequestData_Package.getInstance;
        This.id := Unbounded_String (hashMap.get (quoteRequestData.ID));
        This.setUserName (Unbounded_String (hashMap.get (UserData_Package.USERNAME)));
        This.setProjectInfo (Unbounded_String (hashMap.get (quoteRequestData.PROJECT_INFO)));
        This.setUserComments (Unbounded_String (hashMap.get (quoteRequestData.CUSTOMER_COMMENTS)));
        This.setBudget (Unbounded_String (hashMap.get (quoteRequestData.BUDGET)));
        This.setTimeFrame (Unbounded_String (hashMap.get (quoteRequestData.TIMEFRAME)));
        This.setComments (Unbounded_String (hashMap.get (quoteRequestData.COMMENTS)));
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
            This.logUtil.putF (To_Unbounded_String ("Created with: ") & Java_Image (This.toHashMap), This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (hashMap : HashMap_Access) return QuoteRequest_Access is
      This : constant QuoteRequest_Access := new QuoteRequest;
   begin
      Initialize (This.all, hashMap);
      return This;
   end Create;

   function isValid (This : in out QuoteRequest) return Boolean is
      valid : Boolean;
   begin
        begin
            valid := True;
            if (((This.userName) = (Null_Unbounded_String)) or else ((Length (This.userName)) < (4))) or else ((Length (This.userName)) > (250)) then
                valid := False;
            end if;
            if (((This.projectInfo) = (Null_Unbounded_String)) or else ((Length (This.projectInfo)) < (0))) or else ((Length (This.projectInfo)) > (AbSqlData_Package.MAXBLOB)) then
                valid := False;
            end if;
            if (((This.userComments) = (Null_Unbounded_String)) or else ((Length (This.userComments)) < (0))) or else ((Length (This.userComments)) > (AbSqlData_Package.MAXBLOB)) then
                valid := False;
            end if;
            if (((This.budget) = (Null_Unbounded_String)) or else ((Length (This.budget)) < (0))) or else ((Length (This.budget)) > (AbSqlData_Package.MAXBLOB)) then
                valid := False;
            end if;
            if (((This.timeFrame) = (Null_Unbounded_String)) or else ((Length (This.timeFrame)) < (0))) or else ((Length (This.timeFrame)) > (AbSqlData_Package.MAXBLOB)) then
                valid := False;
            end if;
            if (((This.comments) = (Null_Unbounded_String)) or else ((Length (This.comments)) < (0))) or else ((Length (This.comments)) > (AbSqlData_Package.MAXBLOB)) then
                valid := False;
            end if;
            return valid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), This'Unchecked_Access, This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out QuoteRequest) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            if (((This.userName) = (Null_Unbounded_String)) or else ((Length (This.userName)) < (4))) or else ((Length (This.userName)) > (250)) then
                stringBuffer.append (To_Unbounded_String ("Please enter a User Name with more than 4 characters.<br>"));
            end if;
            if (((This.projectInfo) = (Null_Unbounded_String)) or else ((Length (This.projectInfo)) < (0))) or else ((Length (This.projectInfo)) > (AbSqlData_Package.MAXBLOB)) then
                stringBuffer.append (To_Unbounded_String ("Please enter Project Info with less than ") & Java_Image (AbSqlData_Package.MAXBLOB) & To_Unbounded_String (" characters.<br>"));
            end if;
            if (((This.userComments) = (Null_Unbounded_String)) or else ((Length (This.userComments)) < (0))) or else ((Length (This.userComments)) > (AbSqlData_Package.MAXBLOB)) then
                stringBuffer.append (To_Unbounded_String ("Please enter User Comments with less than ") & Java_Image (AbSqlData_Package.MAXBLOB) & To_Unbounded_String (" characters.<br>"));
            end if;
            if (((This.budget) = (Null_Unbounded_String)) or else ((Length (This.budget)) < (0))) or else ((Length (This.budget)) > (AbSqlData_Package.MAXBLOB)) then
                stringBuffer.append (To_Unbounded_String ("Please enter Budget with less than ") & Java_Image (AbSqlData_Package.MAXBLOB) & To_Unbounded_String (" characters.<br>"));
            end if;
            if (((This.timeFrame) = (Null_Unbounded_String)) or else ((Length (This.timeFrame)) < (0))) or else ((Length (This.timeFrame)) > (AbSqlData_Package.MAXBLOB)) then
                stringBuffer.append (To_Unbounded_String ("Please enter time frame with less than ") & Java_Image (AbSqlData_Package.MAXBLOB) & To_Unbounded_String (" characters.<br>"));
            end if;
            if (((This.comments) = (Null_Unbounded_String)) or else ((Length (This.comments)) < (0))) or else ((Length (This.comments)) > (AbSqlData_Package.MAXBLOB)) then
                stringBuffer.append (To_Unbounded_String ("Please enter comments with less than ") & Java_Image (AbSqlData_Package.MAXBLOB) & To_Unbounded_String (" characters.<br>"));
            end if;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), This'Unchecked_Access, To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toVector (This : in out QuoteRequest) return BasicArrayList_Access is
      values : BasicArrayList_Access;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        values := BasicArrayListD_Package.Create;
        values.add (This.id);
        values.add (This.userName);
        values.add (This.projectInfo);
        values.add (This.userComments);
        values.add (This.budget);
        values.add (This.timeFrame);
        values.add (This.comments);
        calendar := Calendar_Package.getInstance;
        time := Java_New_String (calendar.getTimeInMillis.toString);
        values.add (time);
        values.add (time);
        return values;
   end toVector;

   function toHashMap (This : in out QuoteRequest) return HashMap_Access is
      quoteRequestData : QuoteRequestData_Access;
      values : HashMap_Access;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        quoteRequestData := QuoteRequestData_Package.getInstance;
        values := StdUtil_Package.getInstance.createHashMap;
        values.put (UserData_Package.USERNAME, This.userName);
        values.put (quoteRequestData.PROJECT_INFO, This.projectInfo);
        values.put (quoteRequestData.CUSTOMER_COMMENTS, This.userComments);
        values.put (quoteRequestData.BUDGET, This.budget);
        values.put (quoteRequestData.TIMEFRAME, This.timeFrame);
        values.put (quoteRequestData.COMMENTS, This.comments);
        calendar := Calendar_Package.getInstance;
        time := Java_New_String (calendar.getTimeInMillis.toString);
        values.put (EntryData_Package.getInstance.LASTMODIFIED, time);
        return values;
   end toHashMap;

   procedure setUserName (This : in out QuoteRequest; value : Unbounded_String) is
   begin
        This.userName := value;
   end setUserName;

   procedure setProjectInfo (This : in out QuoteRequest; value : Unbounded_String) is
   begin
        This.projectInfo := value;
   end setProjectInfo;

   procedure setUserComments (This : in out QuoteRequest; value : Unbounded_String) is
   begin
        This.userComments := value;
   end setUserComments;

   procedure setBudget (This : in out QuoteRequest; value : Unbounded_String) is
   begin
        This.budget := value;
   end setBudget;

   procedure setTimeFrame (This : in out QuoteRequest; value : Unbounded_String) is
   begin
        This.timeFrame := value;
   end setTimeFrame;

   procedure setComments (This : in out QuoteRequest; value : Unbounded_String) is
      stringUtil : StringUtil_Access;
   begin
        This.comments := value;
        stringUtil := StringUtil_Package.getInstance;
        if (This.comments) = (Null_Unbounded_String) then
            This.comments := stringUtil.EMPTY_STRING;
        end if;
   end setComments;

   function getUserName (This : in out QuoteRequest) return Unbounded_String is
   begin
        return This.userName;
   end getUserName;

   function getProjectInfo (This : in out QuoteRequest) return Unbounded_String is
   begin
        return This.projectInfo;
   end getProjectInfo;

   function getUserComments (This : in out QuoteRequest) return Unbounded_String is
   begin
        return This.userComments;
   end getUserComments;

   function getBudget (This : in out QuoteRequest) return Unbounded_String is
   begin
        return This.budget;
   end getBudget;

   function getTimeFrame (This : in out QuoteRequest) return Unbounded_String is
   begin
        return This.timeFrame;
   end getTimeFrame;

   function getComments (This : in out QuoteRequest) return Unbounded_String is
   begin
        return This.comments;
   end getComments;

   procedure isValid (This : in out QuoteRequest) is
      Java_Result : constant Boolean := QuoteRequest'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure validationInfo (This : in out QuoteRequest) is
      Java_Result : constant Unbounded_String := QuoteRequest'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

   procedure toVector (This : in out QuoteRequest) is
      Java_Result : constant BasicArrayList_Access := QuoteRequest'Class (This).toVector;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toVector;

   procedure toHashMap (This : in out QuoteRequest) is
      Java_Result : constant HashMap_Access := QuoteRequest'Class (This).toHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMap;

   procedure getUserName (This : in out QuoteRequest) is
      Java_Result : constant Unbounded_String := QuoteRequest'Class (This).getUserName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUserName;

   procedure getProjectInfo (This : in out QuoteRequest) is
      Java_Result : constant Unbounded_String := QuoteRequest'Class (This).getProjectInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getProjectInfo;

   procedure getUserComments (This : in out QuoteRequest) is
      Java_Result : constant Unbounded_String := QuoteRequest'Class (This).getUserComments;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUserComments;

   procedure getBudget (This : in out QuoteRequest) is
      Java_Result : constant Unbounded_String := QuoteRequest'Class (This).getBudget;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBudget;

   procedure getTimeFrame (This : in out QuoteRequest) is
      Java_Result : constant Unbounded_String := QuoteRequest'Class (This).getTimeFrame;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTimeFrame;

   procedure getComments (This : in out QuoteRequest) is
      Java_Result : constant Unbounded_String := QuoteRequest'Class (This).getComments;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getComments;

end org.allbinary.business.user.quoterequest.QuoteRequest_Package;


