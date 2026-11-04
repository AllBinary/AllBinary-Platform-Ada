--  Generated Code Do Not Modify


with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.NullUtil_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.logic.util.visitor.Visitor_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.thread.ThreadObjectUtil_Package; use org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.thread.ThreadObjectUtil_Package_References;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.time.TimeDelayHelper_Package;

package body org.allbinary.time.StupidTimer_Package is

   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   subtype NullUtil_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access;
   function "=" (Left, Right : NullUtil_Access) return Boolean renames org.allbinary.logic.NullUtil_Package_References."=";
   subtype NullUtil_Access_Array is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array;
   function "=" (Left, Right : NullUtil_Access_Array) return Boolean renames org.allbinary.logic.NullUtil_Package_References."=";
   subtype NullUtil_Access_Array_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access;
   function "=" (Left, Right : NullUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.NullUtil_Package_References."=";
   subtype NullUtil_Access_Array_Access_Array is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access_Array;
   function "=" (Left, Right : NullUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.NullUtil_Package_References."=";
   subtype NullUtil_Access_Array_Access_Array_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.NullUtil_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype Visitor_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access;
   function "=" (Left, Right : Visitor_Access) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   subtype Visitor_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array;
   function "=" (Left, Right : Visitor_Access_Array) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   subtype Visitor_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access;
   function "=" (Left, Right : Visitor_Access_Array_Access) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   subtype Visitor_Access_Array_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array;
   function "=" (Left, Right : Visitor_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   subtype Visitor_Access_Array_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Visitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype ThreadObjectUtil_Access is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access;
   function "=" (Left, Right : ThreadObjectUtil_Access) return Boolean renames org.allbinary.thread.ThreadObjectUtil_Package_References."=";
   subtype ThreadObjectUtil_Access_Array is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array;
   function "=" (Left, Right : ThreadObjectUtil_Access_Array) return Boolean renames org.allbinary.thread.ThreadObjectUtil_Package_References."=";
   subtype ThreadObjectUtil_Access_Array_Access is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array_Access;
   function "=" (Left, Right : ThreadObjectUtil_Access_Array_Access) return Boolean renames org.allbinary.thread.ThreadObjectUtil_Package_References."=";
   subtype ThreadObjectUtil_Access_Array_Access_Array is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ThreadObjectUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.ThreadObjectUtil_Package_References."=";
   subtype ThreadObjectUtil_Access_Array_Access_Array_Access is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThreadObjectUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.ThreadObjectUtil_Package_References."=";
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   function "=" (Left, Right : TimeDelayHelper_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   procedure Initialize_Fields (This : in out StupidTimer'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.nullUtil := NullUtil_Package.getInstance;
      This.threadObjectUtil := ThreadObjectUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out StupidTimer'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return StupidTimer_Access is
      This : constant StupidTimer_Access := new StupidTimer;
   begin
      StupidTimer_Package.Initialize (This.all);
      return This;
   end Create;


   function visitBool (This : in out StupidTimer; visitorInterface_Param : access Visitor_Package.Visitor'Class) return Boolean is
      visitorInterface : constant Visitor_Access := Visitor_Access (visitorInterface_Param);
      result : Boolean;
      result2 : Boolean;
   begin
        result := Java_Unbox_Boolean (visitorInterface.visit (This.nullUtil.NULL_OBJECT));
        result2 := result;
        return result2;
   end visitBool;

   --  throws Exception
   procedure visit (This : in out StupidTimer; visitorInterface_Param : access Visitor_Package.Visitor'Class; timeDelayHelper_Param : access TimeDelayHelper_Package.TimeDelayHelper'Class) is
      visitorInterface : constant Visitor_Access := Visitor_Access (visitorInterface_Param);
      timeDelayHelper : constant TimeDelayHelper_Access := TimeDelayHelper_Access (timeDelayHelper_Param);
      tookTooLong : Boolean;
      WAITING_FOR : Unbounded_String;
      index : Integer;
   begin
        tookTooLong := False;
        WAITING_FOR := To_Unbounded_String ("Waiting for: ");
        PreLogUtil_Package.put (StringMaker_Package.Create.append (WAITING_FOR).append (StringUtil_Package.getInstance.toString (visitorInterface)).toString, StupidTimer_Access'(This'Unchecked_Access), This.commonStrings.VISIT);
        index := 0;
        while StupidTimer'Class (This).visitBool (visitorInterface) loop
            if ((index) rem (10)) = (0) then
                PreLogUtil_Package.put (StringMaker_Package.Create.append (WAITING_FOR).appendint (index).toString, StupidTimer_Access'(This'Unchecked_Access), This.commonStrings.VISIT);
            end if;
            index := index + 1;
            begin  --  synchronized
                This.threadObjectUtil.waitObjectFor (StupidTimer_Access'(This'Unchecked_Access), 1800);
            end;
            if timeDelayHelper.isTimeTNT then
                tookTooLong := True;
                exit;
            end if;
        end loop;
        if tookTooLong then
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, StupidTimer_Access'(This'Unchecked_Access), This.commonStrings.VISIT, Java_New_Exception ("Exception", StringMaker_Package.Create.append (To_Unbounded_String ("Took Too Long: ")).append (StringUtil_Package.getInstance.toString (visitorInterface)).toString));
        else
            PreLogUtil_Package.put (timeDelayHelper.toString, StupidTimer_Access'(This'Unchecked_Access), This.commonStrings.VISIT);
        end if;
   end visit;

   --  throws Exception
   procedure stopWaiting (This : in out StupidTimer) is
   begin
        begin  --  synchronized
            This.threadObjectUtil.notifyObject (StupidTimer_Access'(This'Unchecked_Access));
        end;
   end stopWaiting;

   procedure visitBool (This : in out StupidTimer; visitorInterface_Param : access Visitor_Package.Visitor'Class) is
      Java_Result : constant Boolean := StupidTimer'Class (This).visitBool (visitorInterface_Param => visitorInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visitBool;

end org.allbinary.time.StupidTimer_Package;


