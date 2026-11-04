--  Generated Code Do Not Modify


with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfo_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.system.SoftwareInformation_Package; use org.allbinary.logic.system.SoftwareInformation_Package;
with org.allbinary.logic.system.SoftwareInformation_Package_References;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.HighScores_Package_References;
with org.allbinary.game.score.HighScoresResultsListener_Package; use org.allbinary.game.score.HighScoresResultsListener_Package;
with org.allbinary.game.score.HighScoresResultsListener_Package_References;
with org.allbinary.game.score.RecordStoreHighScores_Package; use org.allbinary.game.score.RecordStoreHighScores_Package;
with org.allbinary.game.score.ScoreComparator_Package; use org.allbinary.game.score.ScoreComparator_Package;
with org.allbinary.game.score.HighScoresHelper2_Package; use org.allbinary.game.score.HighScoresHelper2_Package;
with org.allbinary.game.score.HighScoresHelperBaseInterface_Package; use org.allbinary.game.score.HighScoresHelperBaseInterface_Package;
with org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References;

package body org.allbinary.game.score.BasicHighScoresFactory_Package is

   subtype GameInfo_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access;
   function "=" (Left, Right : GameInfo_Access) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array;
   function "=" (Left, Right : GameInfo_Access_Array) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access;
   function "=" (Left, Right : GameInfo_Access_Array_Access) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array;
   function "=" (Left, Right : GameInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
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
   subtype SoftwareInformation_Access is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access;
   function "=" (Left, Right : SoftwareInformation_Access) return Boolean renames org.allbinary.logic.system.SoftwareInformation_Package_References."=";
   subtype SoftwareInformation_Access_Array is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array;
   function "=" (Left, Right : SoftwareInformation_Access_Array) return Boolean renames org.allbinary.logic.system.SoftwareInformation_Package_References."=";
   subtype SoftwareInformation_Access_Array_Access is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array_Access;
   function "=" (Left, Right : SoftwareInformation_Access_Array_Access) return Boolean renames org.allbinary.logic.system.SoftwareInformation_Package_References."=";
   subtype SoftwareInformation_Access_Array_Access_Array is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array_Access_Array;
   function "=" (Left, Right : SoftwareInformation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.SoftwareInformation_Package_References."=";
   subtype SoftwareInformation_Access_Array_Access_Array_Access is org.allbinary.logic.system.SoftwareInformation_Package_References.SoftwareInformation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SoftwareInformation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.SoftwareInformation_Package_References."=";
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype HighScores_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access;
   function "=" (Left, Right : HighScores_Access) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   subtype HighScores_Access_Array is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array;
   function "=" (Left, Right : HighScores_Access_Array) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   subtype HighScores_Access_Array_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access;
   function "=" (Left, Right : HighScores_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   subtype HighScores_Access_Array_Access_Array is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access_Array;
   function "=" (Left, Right : HighScores_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   subtype HighScores_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScores_Package_References.HighScores_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScores_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScores_Package_References."=";
   subtype HighScoresResultsListener_Access is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access;
   function "=" (Left, Right : HighScoresResultsListener_Access) return Boolean renames org.allbinary.game.score.HighScoresResultsListener_Package_References."=";
   subtype HighScoresResultsListener_Access_Array is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access_Array;
   function "=" (Left, Right : HighScoresResultsListener_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresResultsListener_Package_References."=";
   subtype HighScoresResultsListener_Access_Array_Access is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access_Array_Access;
   function "=" (Left, Right : HighScoresResultsListener_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresResultsListener_Package_References."=";
   subtype HighScoresResultsListener_Access_Array_Access_Array is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresResultsListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresResultsListener_Package_References."=";
   subtype HighScoresResultsListener_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresResultsListener_Package_References.HighScoresResultsListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresResultsListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresResultsListener_Package_References."=";
   subtype HighScoresHelperBaseInterface_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access;
   function "=" (Left, Right : HighScoresHelperBaseInterface_Access) return Boolean renames org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References."=";
   subtype HighScoresHelperBaseInterface_Access_Array is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array;
   function "=" (Left, Right : HighScoresHelperBaseInterface_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References."=";
   subtype HighScoresHelperBaseInterface_Access_Array_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access;
   function "=" (Left, Right : HighScoresHelperBaseInterface_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References."=";
   subtype HighScoresHelperBaseInterface_Access_Array_Access_Array is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresHelperBaseInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References."=";
   subtype HighScoresHelperBaseInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References.HighScoresHelperBaseInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresHelperBaseInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresHelperBaseInterface_Package_References."=";
   procedure Initialize_Fields (This : in out BasicHighScoresFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.highScoresArray := new HighScores_Access_Array'(0 .. (1) - 1 => null);
      This.TOP := To_Unbounded_String ("Top");
      This.SCORES := To_Unbounded_String ("Scores");
      This.PERSONAL_HIGH_SCORES := To_Unbounded_String ("Personal Top Scores");
      This.FETCH := To_Unbounded_String ("fetchHighScores");
   end Initialize_Fields;


   procedure Initialize (This : in out BasicHighScoresFactory'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; softwareInformation_Param : access SoftwareInformation_Package.SoftwareInformation'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      softwareInformation : constant SoftwareInformation_Access := SoftwareInformation_Access (softwareInformation_Param);
   begin
      HighScoresBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.abeClientInformation := abeClientInformation;
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; softwareInformation_Param : access SoftwareInformation_Package.SoftwareInformation'Class) return BasicHighScoresFactory_Access is
      This : constant BasicHighScoresFactory_Access := new BasicHighScoresFactory;
   begin
      BasicHighScoresFactory_Package.Initialize (This.all, abeClientInformation_Param, softwareInformation_Param);
      return This;
   end Create;

   procedure fetchHighScores (This : in out BasicHighScoresFactory; gameInfo_Param : access GameInfo_Package.GameInfo'Class; highScoresResultsListener_Param : access HighScoresResultsListener_Package.HighScoresResultsListener'Class) is
      gameInfo : constant GameInfo_Access := GameInfo_Access (gameInfo_Param);
      highScoresResultsListener : constant HighScoresResultsListener_Access := HighScoresResultsListener_Access (highScoresResultsListener_Param);
   begin
        This.logUtil.putF (To_Unbounded_String ("Getting Local HighScores"), BasicHighScoresFactory_Access'(This'Unchecked_Access), This.FETCH);
        BasicHighScoresFactory'Class (This).fetchHighScoresPreload (gameInfo, highScoresResultsListener, True);
   end fetchHighScores;

   procedure fetchHighScoresPreload (This : in out BasicHighScoresFactory; gameInfo_Param : access GameInfo_Package.GameInfo'Class; highScoresResultsListener_Param : access HighScoresResultsListener_Package.HighScoresResultsListener'Class; preload : Boolean) is
      gameInfo : constant GameInfo_Access := GameInfo_Access (gameInfo_Param);
      highScoresResultsListener : constant HighScoresResultsListener_Access := HighScoresResultsListener_Access (highScoresResultsListener_Param);
   begin
        begin
            This.highScoresArray (0) := RecordStoreHighScores_Package.getInstance (This.abeClientInformation, gameInfo, This.TOP, This.PERSONAL_HIGH_SCORES, This.SCORES, ScoreComparator_Package.Create (True));
            highScoresResultsListener.setHighScoresArray (This.highScoresArray);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, BasicHighScoresFactory_Access'(This'Unchecked_Access), This.FETCH, e);
                end;
        end;
   end fetchHighScoresPreload;

   function createHighScoresHelper (This : in out BasicHighScoresFactory) return HighScoresHelperBaseInterface_Access is
   begin
        return HighScoresHelperBaseInterface_Access (HighScoresHelper2_Package.Create);
   end createHighScoresHelper;

   function loaded (index2 : Integer) return Boolean is
   begin
        if (index2) >= (0) then
            return True;
        end if;
        return False;
   end loaded;

   procedure loaded (index2 : Integer) is
      Java_Result : constant Boolean := loaded (index2 => index2);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end loaded;

end org.allbinary.game.score.BasicHighScoresFactory_Package;


