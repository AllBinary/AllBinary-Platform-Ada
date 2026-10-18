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


package body views.admin.orderhistory.DateRangeOrderHistoryView_Package is

   procedure Initialize_Fields (This : in out DateRangeOrderHistoryView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.VIEWALLORDERS := To_Unbounded_String ("View All");
      This.VIEWORDERSINLASTHOUR := To_Unbounded_String ("Last Hour");
      This.VIEWORDERSINLASTDAY := To_Unbounded_String ("Last Day");
      This.VIEWORDERSINLASTWEEK := To_Unbounded_String ("Last Week");
      This.VIEWORDERSINLAST30DAYS := To_Unbounded_String ("30 Days");
      
      This.shipped := Null_Unbounded_String;
      This.partiallyShipped := Null_Unbounded_String;
      This.processing := Null_Unbounded_String;
      This.preprocessing := Null_Unbounded_String;
      This.cancelled := Null_Unbounded_String;
      This.dateType := Null_Unbounded_String;
      This.toDate := Null_Unbounded_String;
      This.fromDate := Null_Unbounded_String;
      This.fromYear := Null_Unbounded_String;
      This.fromMonth := Null_Unbounded_String;
      This.fromDay := Null_Unbounded_String;
      This.fromHour := Null_Unbounded_String;
      This.toYear := Null_Unbounded_String;
      This.toMonth := Null_Unbounded_String;
      This.toDay := Null_Unbounded_String;
      This.toHour := Null_Unbounded_String;
      This.command := Null_Unbounded_String;
      This.ON := To_Unbounded_String ("on");
      This.MAXLEN := 15;
   end Initialize_Fields;


   procedure Initialize (This : in out DateRangeOrderHistoryView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.request := HttpServletRequest_Access (DateRangeOrderHistoryView'Class (This).getPageContext.getRequest);
        DateRangeOrderHistoryView'Class (This).getFormData;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return DateRangeOrderHistoryView_Access is
      This : constant DateRangeOrderHistoryView_Access := new DateRangeOrderHistoryView;
   begin
      DateRangeOrderHistoryView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   procedure getFormData (This : in out DateRangeOrderHistoryView) is
   begin
        This.dateType := This.request.getParameter (OrderHistoryData_Package.DATETYPE);
        This.preprocessing := This.request.getParameter (OrderHistoryData_Package.PREPROCESSINGNAME);
        This.shipped := This.request.getParameter (OrderHistoryData_Package.SHIPPEDNAME);
        This.partiallyShipped := This.request.getParameter (OrderHistoryData_Package.PARTIALLYSHIPPEDNAME);
        This.processing := This.request.getParameter (OrderHistoryData_Package.PROCESSINGNAME);
        This.cancelled := This.request.getParameter (OrderHistoryData_Package.CANCELLEDNAME);
        This.fromYear := This.request.getParameter (OrderHistoryData_Package.FROMYEAR);
        This.fromMonth := This.request.getParameter (OrderHistoryData_Package.FROMMONTH);
        This.fromDay := This.request.getParameter (OrderHistoryData_Package.FROMDAY);
        This.fromHour := This.request.getParameter (OrderHistoryData_Package.FROMHOUR);
        This.toYear := This.request.getParameter (OrderHistoryData_Package.TOYEAR);
        This.toMonth := This.request.getParameter (OrderHistoryData_Package.TOMONTH);
        This.toDay := This.request.getParameter (OrderHistoryData_Package.TODAY);
        This.toHour := This.request.getParameter (OrderHistoryData_Package.TOHOUR);
        This.command := This.request.getParameter (GLOBALS2.ADMINCOMMAND);
   end getFormData;

   procedure addDomNodeInterfaces (This : in out DateRangeOrderHistoryView) is
   begin
        DateRangeOrderHistoryView'Class (This).addDomNodeInterface (DomNodeInterface_Access (DateRangeOrderHistoryView_Access'(This'Unchecked_Access)));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out DateRangeOrderHistoryView) return Unbounded_String is
   begin
        begin
            DateRangeOrderHistoryView'Class (This).addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, DateRangeOrderHistoryView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   function toXmlNode (This : in out DateRangeOrderHistoryView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      stringBuffer : StringMaker_Access;
      node : Node_Access;
      orderHistoryVector : BasicArrayList_Access;
      size : Integer;
      orderHistory : OrderHistory_Access;
      index : Integer;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Attempt to View orders in (fromDate="));
                stringBuffer.append (This.fromDate);
                stringBuffer.append (To_Unbounded_String (",toDate="));
                stringBuffer.append (This.toDate);
                stringBuffer.append (To_Unbounded_String (") and status"));
                This.logUtil.putF (stringBuffer.toString, DateRangeOrderHistoryView_Access'(This'Unchecked_Access), To_Unbounded_String ("view"));
            end if;
            node := document.createElement (OrderData_Package.ORDERS);
            if ((This.preprocessing) /= (Null_Unbounded_String)) and then ((This.preprocessing.compareTo (This.ON)) = (0)) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("Adding Preprocessing Orders"), DateRangeOrderHistoryView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"));
                end if;
                orderHistoryVector := OrderHistoryEntityFactory_Package.getInstance.getOrders (OrderHistoryData_Package.PREPROCESSING, This.fromDate, This.toDate);
                size := orderHistoryVector.size;
                for index in 0 .. (size) - 1 loop
                    orderHistory := OrderHistory_Access (orderHistoryVector.get (index));
                    node.appendChild (orderHistory.toXmlNode (document));
                end loop;
            end if;
            if ((This.shipped) /= (Null_Unbounded_String)) and then ((This.shipped.compareTo (This.ON)) = (0)) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("Adding Shipped Orders"), DateRangeOrderHistoryView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"));
                end if;
                orderHistoryVector := OrderHistoryEntityFactory_Package.getInstance.getOrders (OrderHistoryData_Package.SHIPPED, This.fromDate, This.toDate);
                size := orderHistoryVector.size;
                for index in 0 .. (size) - 1 loop
                    orderHistory := OrderHistory_Access (orderHistoryVector.get (index));
                    node.appendChild (orderHistory.toXmlNode (document));
                end loop;
            end if;
            if ((This.partiallyShipped) /= (Null_Unbounded_String)) and then ((This.partiallyShipped.compareTo (This.ON)) = (0)) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("Adding Partially Shipped Orders"), DateRangeOrderHistoryView_Access'(This'Unchecked_Access), To_Unbounded_String ("toDomNode"));
                end if;
                orderHistoryVector := OrderHistoryEntityFactory_Package.getInstance.getOrders (OrderHistoryData_Package.PARTIALLYSHIPPED, This.fromDate, This.toDate);
                size := orderHistoryVector.size;
                for index in 0 .. (size) - 1 loop
                    orderHistory := OrderHistory_Access (orderHistoryVector.get (index));
                    node.appendChild (orderHistory.toXmlNode (document));
                end loop;
            end if;
            if ((This.processing) /= (Null_Unbounded_String)) and then ((This.processing.compareTo (This.ON)) = (0)) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("Adding Processing Orders"), DateRangeOrderHistoryView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"));
                end if;
                orderHistoryVector := OrderHistoryEntityFactory_Package.getInstance.getOrders (OrderHistoryData_Package.PROCESSING, This.fromDate, This.toDate);
                size := orderHistoryVector.size;
                for index in 0 .. (size) - 1 loop
                    orderHistory := OrderHistory_Access (orderHistoryVector.get (index));
                    node.appendChild (orderHistory.toXmlNode (document));
                end loop;
            end if;
            if ((This.cancelled) /= (Null_Unbounded_String)) and then ((This.cancelled.compareTo (This.ON)) = (0)) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("Adding Cancelled Orders"), DateRangeOrderHistoryView_Access'(This'Unchecked_Access), To_Unbounded_String ("view"));
                end if;
                orderHistoryVector := OrderHistoryEntityFactory_Package.getInstance.getOrders (OrderHistoryData_Package.CANCELLED, This.fromDate, This.toDate);
                size := orderHistoryVector.size;
                for index in 0 .. (size) - 1 loop
                    orderHistory := OrderHistory_Access (orderHistoryVector.get (index));
                    node.appendChild (orderHistory.toXmlNode (document));
                end loop;
            end if;
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, OrderHistoryData_Package.PREPROCESSINGNAME, OrderHistoryData_Package.PREPROCESSING));
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, OrderHistoryData_Package.PROCESSINGNAME, OrderHistoryData_Package.PROCESSING));
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, OrderHistoryData_Package.CANCELLEDNAME, OrderHistoryData_Package.CANCELLED));
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, OrderHistoryData_Package.PARTIALLYSHIPPEDNAME, OrderHistoryData_Package.PARTIALLYSHIPPED));
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, OrderHistoryData_Package.SHIPPEDNAME, OrderHistoryData_Package.SHIPPED));
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, GLOBALS2.VIEWNAME, GLOBALS2.VIEW));
            return node;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XSLLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.FAILURE, DateRangeOrderHistoryView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"), e);
            end if;
            return null;
                end;
        end;
   end toXmlNode;

   function isValid (This : in out DateRangeOrderHistoryView) return Boolean is
      isValid : Boolean;
      calendar : Calendar_Access;
      currentTime : Long_Long_Integer;
      rangeDate : Unbounded_String;
      thirtyDays : Long_Long_Integer;
      oneWeek : Long_Long_Integer;
      oneDay : Long_Long_Integer;
      oneHour : Long_Long_Integer;
      rangeDateLong : Long_Long_Integer;
      time : Unbounded_String;
      stringBuffer : StringMaker_Access;
   begin
        begin
            isValid := True;
            if ((This.dateType) = (Null_Unbounded_String)) or else ((((This.dateType.compareTo (OrderHistoryData_Package.TYPELONG)) /= (0)) and then ((This.dateType.compareTo (OrderHistoryData_Package.TYPECAESAR)) /= (0)))) then
                isValid := False;
            end if;
            if (This.dateType) /= (Null_Unbounded_String) then
                if (This.dateType.compareTo (OrderHistoryData_Package.TYPELONG)) = (0) then
                    calendar := Calendar_Package.getInstance;
                    currentTime := calendar.getTimeInMillis;
                    rangeDate := StringUtil_Package.getInstance.EMPTY_STRING;
                    if (This.command.compareTo (This.VIEWORDERSINLASTHOUR)) = (0) then
                        oneHour := ((60) * (60)) * (1000);
                        rangeDate := oneHour.toString;
                    elsif (This.command.compareTo (This.VIEWORDERSINLASTDAY)) = (0) then
                        oneDay := (((24) * (60)) * (60)) * (1000);
                        rangeDate := oneDay.toString;
                    elsif (This.command.compareTo (This.VIEWORDERSINLASTWEEK)) = (0) then
                        oneWeek := ((((7) * (24)) * (60)) * (60)) * (1000);
                        rangeDate := oneWeek.toString;
                    elsif (This.command.compareTo (This.VIEWORDERSINLAST30DAYS)) = (0) then
                        thirtyDays := ((((30) * (24)) * (60)) * (60)) * (1000);
                        rangeDate := thirtyDays.toString;
                    elsif (This.command.compareTo (This.VIEWALLORDERS)) = (0) then
                        rangeDate := currentTime.toString;
                    end if;
                    rangeDateLong := rangeDate.longValue;
                    This.fromDate := (currentTime) - (rangeDateLong).toString;
                    time := Java_New_String (currentTime.toString);
                    This.toDate := time;
                elsif (This.dateType.compareTo (OrderHistoryData_Package.TYPECAESAR)) = (0) then
                    calendar := Calendar_Package.getInstance;
                    TimeUtil_Package.getInstance.setCalendar (calendar, This.fromYear, This.fromMonth, This.fromDay, This.fromHour);
                    This.fromDate := calendar.getTimeInMillis.toString;
                    TimeUtil_Package.getInstance.setCalendar (calendar, This.toYear, This.toMonth, This.toDay, This.toHour);
                    This.toDate := calendar.getTimeInMillis.toString;
                end if;
                if (StringValidationUtil_Package.getInstance.isEmpty (This.toDate)) or else ((Length (This.toDate)) > (This.MAXLEN)) then
                    isValid := False;
                end if;
                if (StringValidationUtil_Package.getInstance.isEmpty (This.fromDate)) or else ((Length (This.fromDate)) > (This.MAXLEN)) then
                    isValid := False;
                end if;
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Attempt to View orders in (fromDate="));
                stringBuffer.append (This.fromDate);
                stringBuffer.append (To_Unbounded_String (",toDate="));
                stringBuffer.append (This.toDate);
                stringBuffer.append (To_Unbounded_String (")"));
                This.logUtil.putF (stringBuffer.toString, DateRangeOrderHistoryView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            return isValid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.put (To_Unbounded_String ("Exception in validation"), DateRangeOrderHistoryView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function toValidationInfoDoc (This : in out DateRangeOrderHistoryView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out DateRangeOrderHistoryView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function validationInfo (This : in out DateRangeOrderHistoryView) return Unbounded_String is
      result : StringMaker_Access;
   begin
        begin
            result := StringMaker_Package.Create;
            if ((This.dateType) = (Null_Unbounded_String)) or else ((((This.dateType.compareTo (OrderHistoryData_Package.TYPELONG)) /= (0)) and then ((This.dateType.compareTo (OrderHistoryData_Package.TYPECAESAR)) /= (0)))) then
                result.append (To_Unbounded_String ("DATETYPE not recognized"));
            end if;
            if (StringValidationUtil_Package.getInstance.isEmpty (This.toDate)) or else ((Length (This.toDate)) > (This.MAXLEN)) then
                result.append (To_Unbounded_String ("Invalid To Date"));
            end if;
            if (StringValidationUtil_Package.getInstance.isEmpty (This.fromDate)) or else ((Length (This.fromDate)) > (This.MAXLEN)) then
                result.append (To_Unbounded_String ("Invalid From Date"));
            end if;
            return result.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), DateRangeOrderHistoryView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Getting Validation Info");
                end;
        end;
   end validationInfo;

   procedure toXmlNode (This : in out DateRangeOrderHistoryView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := DateRangeOrderHistoryView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

   procedure toValidationInfoNode (This : in out DateRangeOrderHistoryView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := DateRangeOrderHistoryView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.admin.orderhistory.DateRangeOrderHistoryView_Package;


