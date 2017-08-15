.class public Lorg/telegram/messenger/MediaController;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MediaController$VideoConvertRunnable;,
        Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;,
        Lorg/telegram/messenger/MediaController$GalleryObserverExternal;,
        Lorg/telegram/messenger/MediaController$GalleryObserverInternal;,
        Lorg/telegram/messenger/MediaController$ExternalObserver;,
        Lorg/telegram/messenger/MediaController$InternalObserver;,
        Lorg/telegram/messenger/MediaController$SearchImage;,
        Lorg/telegram/messenger/MediaController$PhotoEntry;,
        Lorg/telegram/messenger/MediaController$AlbumEntry;,
        Lorg/telegram/messenger/MediaController$AudioEntry;,
        Lorg/telegram/messenger/MediaController$AudioBuffer;,
        Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;
    }
.end annotation


# static fields
.field private static final AUDIO_FOCUSED:I = 0x2

.field private static final AUDIO_NO_FOCUS_CAN_DUCK:I = 0x1

.field private static final AUDIO_NO_FOCUS_NO_DUCK:I = 0x0

.field public static final AUTODOWNLOAD_MASK_AUDIO:I = 0x2

.field public static final AUTODOWNLOAD_MASK_DOCUMENT:I = 0x8

.field public static final AUTODOWNLOAD_MASK_GIF:I = 0x20

.field public static final AUTODOWNLOAD_MASK_MUSIC:I = 0x10

.field public static final AUTODOWNLOAD_MASK_PHOTO:I = 0x1

.field public static final AUTODOWNLOAD_MASK_VIDEO:I = 0x4

.field private static volatile Instance:Lorg/telegram/messenger/MediaController; = null

.field public static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final PROCESSOR_TYPE_INTEL:I = 0x2

.field private static final PROCESSOR_TYPE_MTK:I = 0x3

.field private static final PROCESSOR_TYPE_OTHER:I = 0x0

.field private static final PROCESSOR_TYPE_QCOM:I = 0x1

.field private static final PROCESSOR_TYPE_SEC:I = 0x4

.field private static final PROCESSOR_TYPE_TI:I = 0x5

.field private static final VOLUME_DUCK:F = 0.2f

.field private static final VOLUME_NORMAL:F = 1.0f

.field public static allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field private static broadcastPhotosRunnable:Ljava/lang/Runnable;

.field private static final projectionPhotos:[Ljava/lang/String;

.field private static final projectionVideo:[Ljava/lang/String;

.field public static readArgs:[I


# instance fields
.field private accelerometerSensor:Landroid/hardware/Sensor;

.field private accelerometerVertical:Z

.field private addLaterArray:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private allowStartRecord:Z

.field private audioDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private audioFocus:I

.field private audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

.field private audioPlayer:Landroid/media/MediaPlayer;

.field private audioRecorder:Landroid/media/AudioRecord;

.field private audioTrackPlayer:Landroid/media/AudioTrack;

.field private autoplayGifs:Z

.field private buffersWrited:I

.field private callInProgress:Z

.field private cancelCurrentVideoConversion:Z

.field private countLess:I

.field private currentPlaylistNum:I

.field private currentTotalPcmDuration:J

.field private customTabs:Z

.field private decodingFinished:Z

.field private deleteLaterArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private directShare:Z

.field private documentDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private downloadQueueKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private downloadingCurrentMessage:Z

.field private externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

.field private fileBuffer:Ljava/nio/ByteBuffer;

.field private fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

.field private fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

.field private forceLoopCurrentPlaylist:Z

.field private freePlayerBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AudioBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private generatingWaveform:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private gifDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private gravity:[F

.field private gravityFast:[F

.field private gravitySensor:Landroid/hardware/Sensor;

.field private hasAudioFocus:I

.field private ignoreFirstProgress:I

.field private ignoreOnPause:Z

.field private ignoreProximity:Z

.field private inputFieldHasText:Z

.field private internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

.field private isPaused:Z

.field private lastCheckMask:I

.field private lastMediaCheckTime:J

.field private lastPlayPcm:J

.field private lastProgress:I

.field private lastProximityValue:F

.field private lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field private lastSecretChatEnterTime:J

.field private lastSecretChatLeaveTime:J

.field private lastSecretChatVisibleMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastTag:I

.field private lastTimestamp:J

.field private linearAcceleration:[F

.field private linearSensor:Landroid/hardware/Sensor;

.field private listenerInProgress:Z

.field private loadingFileMessagesObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private loadingFileObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mediaProjections:[Ljava/lang/String;

.field public mobileDataDownloadMask:I

.field private musicDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private observersByTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private photoDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private playMusicAgain:Z

.field private playerBufferSize:I

.field private final playerObjectSync:Ljava/lang/Object;

.field private playerQueue:Lorg/telegram/messenger/DispatchQueue;

.field private final playerSync:Ljava/lang/Object;

.field private playingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private playlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private previousAccValue:F

.field private progressTimer:Ljava/util/Timer;

.field private final progressTimerSync:Ljava/lang/Object;

.field private proximityHasDifferentValues:Z

.field private proximitySensor:Landroid/hardware/Sensor;

.field private proximityTouched:Z

.field private proximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private raiseChat:Lorg/telegram/ui/ChatActivity;

.field private raiseToEarRecord:Z

.field private raiseToSpeak:Z

.field private raisedToBack:I

.field private raisedToTop:I

.field private recordBufferSize:I

.field private recordBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private recordDialogId:J

.field private recordQueue:Lorg/telegram/messenger/DispatchQueue;

.field private recordReplyingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private recordRunnable:Ljava/lang/Runnable;

.field private recordSamples:[S

.field private recordStartRunnable:Ljava/lang/Runnable;

.field private recordStartTime:J

.field private recordTimeCount:J

.field private recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

.field private recordingAudioFile:Ljava/io/File;

.field private refreshGalleryRunnable:Ljava/lang/Runnable;

.field private repeatMode:I

.field private resumeAudioOnFocusGain:Z

.field public roamingDownloadMask:I

.field private samplesCount:J

.field private saveToGallery:Z

.field private sendAfterDone:I

.field private sensorManager:Landroid/hardware/SensorManager;

.field private sensorsStarted:Z

.field private shuffleMusic:Z

.field private shuffledPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private startObserverToken:I

.field private stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

.field private final sync:Ljava/lang/Object;

.field private timeSinceRaise:J

.field private typingTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private useFrontSpeaker:Z

.field private usedPlayerBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AudioBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private videoConvertFirstWrite:Z

.field private videoConvertQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private final videoConvertSync:Ljava/lang/Object;

.field private videoDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private final videoQueueSync:Ljava/lang/Object;

.field private voiceMessagesPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private voiceMessagesPlaylistMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private voiceMessagesPlaylistUnread:Z

.field public wifiDownloadMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    new-array v0, v3, [I

    sput-object v0, Lorg/telegram/messenger/MediaController;->readArgs:[I

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "bucket_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "bucket_display_name"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/MediaController;->projectionPhotos:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "bucket_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "bucket_display_name"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v7

    sput-object v0, Lorg/telegram/messenger/MediaController;->projectionVideo:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    const/high16 v0, -0x3d380000    # -100.0f

    iput v0, p0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    new-array v0, v6, [F

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    new-array v0, v6, [F

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    new-array v0, v6, [F

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    iput v1, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->videoQueueSync:Ljava/lang/Object;

    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    iput v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    iput v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    iput v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    iput v1, p0, Lorg/telegram/messenger/MediaController;->lastCheckMask:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    iput v1, p0, Lorg/telegram/messenger/MediaController;->lastTag:I

    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    iput v1, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    iput v1, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->decodingFinished:Z

    iput v1, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->usedPlayerBuffers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->freePlayerBuffers:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->playerSync:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    const/16 v0, 0x400

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->recordSamples:[S

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->sync:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/messenger/MediaController$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$1;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->recordRunnable:Ljava/lang/Runnable;

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatEnterTime:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatLeaveTime:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatVisibleMessages:Ljava/util/ArrayList;

    iput v1, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    const/16 v0, 0x3e80

    const/16 v2, 0x10

    const/4 v3, 0x2

    :try_start_0
    invoke-static {v0, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    iget v0, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    if-gtz v0, :cond_0

    const/16 v0, 0x500

    iput v0, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    :cond_0
    const v0, 0xbb80

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    iget v0, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    if-gtz v0, :cond_1

    const/16 v0, 0xf00

    iput v0, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    :cond_1
    move v0, v1

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->freePlayerBuffers:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/messenger/MediaController$AudioBuffer;

    iget v4, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    invoke-direct {v3, p0, v4}, Lorg/telegram/messenger/MediaController$AudioBuffer;-><init>(Lorg/telegram/messenger/MediaController;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_5

    :cond_4
    const-string/jumbo v0, "gravity or linear sensor not found"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/16 v2, 0x20

    const-string/jumbo v3, "proximity"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/16 v0, 0x780

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;

    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v2, "recordQueue"

    invoke-direct {v0, v2}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v2, "fileEncodingQueue"

    invoke-direct {v0, v2}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v2, "playerQueue"

    invoke-direct {v0, v2}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->playerQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v2, "fileDecodingQueue"

    invoke-direct {v0, v2}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "mainconfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "mobileDataDownloadMask"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    const-string/jumbo v2, "wifiDownloadMask"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    const-string/jumbo v2, "roamingDownloadMask"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    const-string/jumbo v2, "save_gallery"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    const-string/jumbo v2, "autoplay_gif"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    const-string/jumbo v2, "raise_to_speak"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    const-string/jumbo v2, "custom_tabs"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    const-string/jumbo v2, "direct_share"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    const-string/jumbo v2, "shuffleMusic"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    const-string/jumbo v2, "repeatMode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    new-instance v0, Lorg/telegram/messenger/MediaController$2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$2;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    new-instance v0, Lorg/telegram/messenger/MediaController$3;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$3;-><init>(Lorg/telegram/messenger/MediaController;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->checkAutodownloadSettings()V

    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_8

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    const-string/jumbo v1, "_display_name"

    aput-object v1, v0, v5

    const-string/jumbo v1, "bucket_display_name"

    aput-object v1, v0, v7

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "height"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    :goto_3
    :try_start_2
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Lorg/telegram/messenger/MediaController$GalleryObserverExternal;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MediaController$GalleryObserverExternal;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    :try_start_3
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_5
    :try_start_4
    new-instance v1, Lorg/telegram/messenger/MediaController$4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$4;-><init>(Lorg/telegram/messenger/MediaController;)V

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_7

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_7
    :goto_6
    return-void

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_8
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    const-string/jumbo v1, "_display_name"

    aput-object v1, v0, v5

    const-string/jumbo v1, "bucket_display_name"

    aput-object v1, v0, v7

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method static synthetic access$000(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/messenger/MediaController;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/MediaController;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordStartTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lorg/telegram/messenger/MediaController;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->recordStartTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/MediaController;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/messenger/MediaController;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/MediaController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->stopRecordingInternal(I)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->refreshGalleryRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/telegram/messenger/MediaController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->refreshGalleryRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/MediaController;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$InternalObserver;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    return-object v0
.end method

.method static synthetic access$1702(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$InternalObserver;)Lorg/telegram/messenger/MediaController$InternalObserver;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$ExternalObserver;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    return-object v0
.end method

.method static synthetic access$1802(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$ExternalObserver;)Lorg/telegram/messenger/MediaController$ExternalObserver;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1902(Lorg/telegram/messenger/MediaController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/messenger/MediaController;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    return-object v0
.end method

.method static synthetic access$2002(Lorg/telegram/messenger/MediaController;Lorg/telegram/tgnet/TLRPC$TL_document;)Lorg/telegram/tgnet/TLRPC$TL_document;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    return-object p1
.end method

.method static synthetic access$2102(Lorg/telegram/messenger/MediaController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->callInProgress:Z

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->sync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/MediaController;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/MediaController;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/MediaController;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    return v0
.end method

.method static synthetic access$2602(Lorg/telegram/messenger/MediaController;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    return p1
.end method

.method static synthetic access$2610(Lorg/telegram/messenger/MediaController;)I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/messenger/MediaController;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    return v0
.end method

.method static synthetic access$2702(Lorg/telegram/messenger/MediaController;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/messenger/MediaController;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    return-wide v0
.end method

.method static synthetic access$2802(Lorg/telegram/messenger/MediaController;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    return-wide p1
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/MediaController;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->currentTotalPcmDuration:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/MediaController;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->samplesCount:J

    return-wide v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/MediaController;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->samplesCount:J

    return-wide p1
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/MediaController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->checkScreenshots(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/messenger/MediaController;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->decodingFinished:Z

    return v0
.end method

.method static synthetic access$3202(Lorg/telegram/messenger/MediaController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->decodingFinished:Z

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->checkPlayerQueue()V

    return-void
.end method

.method static synthetic access$3400(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playerSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->freePlayerBuffers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->usedPlayerBuffers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/messenger/MediaController;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    return v0
.end method

.method static synthetic access$3800(Lorg/telegram/messenger/MediaController;Ljava/nio/ByteBuffer;I[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MediaController;->readOpusFile(Ljava/nio/ByteBuffer;I[I)V

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/MediaController;)[S
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordSamples:[S

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/messenger/MediaController;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    return v0
.end method

.method static synthetic access$4008(Lorg/telegram/messenger/MediaController;)I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->checkDecoderQueue()V

    return-void
.end method

.method static synthetic access$4200(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/messenger/MediaController;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/messenger/MediaController;F)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->seekOpusFile(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lorg/telegram/messenger/MediaController;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->openOpusFile(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/messenger/MediaController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->playNextMessage(Z)V

    return-void
.end method

.method static synthetic access$5100(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/messenger/MediaController;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$5202(Lorg/telegram/messenger/MediaController;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$5300(Lorg/telegram/messenger/MediaController;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->startRecord(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lorg/telegram/messenger/MediaController;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordDialogId:J

    return-wide v0
.end method

.method static synthetic access$5402(Lorg/telegram/messenger/MediaController;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->recordDialogId:J

    return-wide p1
.end method

.method static synthetic access$5500(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordReplyingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$5502(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordReplyingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object p1
.end method

.method static synthetic access$5600(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopRecord()V

    return-void
.end method

.method static synthetic access$5700(Lorg/telegram/messenger/MediaController;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5800()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/MediaController;->projectionPhotos:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5900()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/MediaController;->projectionVideo:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/MediaController;Ljava/nio/ByteBuffer;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->writeFrame(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6000(ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/messenger/MediaController;->broadcastNewPhotos(ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V

    return-void
.end method

.method static synthetic access$6102(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    sput-object p0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$6200(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6302(Lorg/telegram/messenger/MediaController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    return p1
.end method

.method static synthetic access$6400(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6500(Lorg/telegram/messenger/MediaController;)Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->startVideoConvertFromQueue()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->convertVideo(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/MediaController;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    return-wide v0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/MediaController;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    return-wide p1
.end method

.method static synthetic access$800(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method private static broadcastNewPhotos(ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            ">;",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            "I)V"
        }
    .end annotation

    sget-object v0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lorg/telegram/messenger/MediaController$24;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MediaController$24;-><init>(ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;)V

    sput-object v0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    int-to-long v2, p6

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private buildShuffledPlayList()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V
    .locals 5

    const/4 v2, 0x2

    const/4 v1, 0x3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget v4, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    if-eq v4, v0, :cond_0

    iput v0, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    if-ne v0, v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    :goto_1
    if-ne v0, v3, :cond_0

    iput v2, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    if-ne v0, v2, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v4, p0, v1, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2
.end method

.method private checkConversionCanceled()V
    .locals 2

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "canceled conversion"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method private checkDecoderQueue()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$7;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$7;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkDownloadFinished(Ljava/lang/String;I)V
    .locals 11

    const/16 v10, 0x10

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DownloadObject;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    if-ne p2, v6, :cond_1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/messenger/DownloadObject;->id:J

    iget v4, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->removeFromDownloadQueue(JIZ)V

    :cond_1
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v7, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v6, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0

    :cond_4
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v8, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0

    :cond_5
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v9, :cond_6

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0

    :cond_6
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v10, :cond_7

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v10}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0

    :cond_7
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0
.end method

.method private checkIsNextMusicFileDownloaded()V
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/io/File;

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_3
    :goto_2
    if-eqz v3, :cond_6

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_4
    if-eqz v2, :cond_0

    if-eq v2, v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-virtual {v2, v0, v1, v1}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    move-object v2, v0

    goto :goto_1

    :cond_6
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v2

    goto :goto_3

    :cond_7
    move-object v3, v2

    goto :goto_2
.end method

.method private checkPlayerQueue()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playerQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$8;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$8;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkScreenshots(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v10, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatEnterTime:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v2, 0x7d0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatEnterTime:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_6

    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatLeaveTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatLeaveTime:J

    add-long/2addr v8, v2

    cmp-long v5, v6, v8

    if-gtz v5, :cond_6

    :cond_4
    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    const/4 v1, 0x1

    move v0, v1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatVisibleMessages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/SecretChatHelper;->sendScreenshotMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method private native closeOpusFile()V
.end method

.method private convertVideo(Lorg/telegram/messenger/MessageObject;)Z
    .locals 54
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v8, v4, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v0, v4, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v0, v4, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    move-wide/from16 v46, v0

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v6, v4, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, v4, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v5, v4, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v9, v4, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v10, v4, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v4, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    move/from16 v42, v0

    const/4 v4, 0x0

    new-instance v45, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, v45

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x12

    if-ge v11, v12, :cond_1

    if-le v7, v6, :cond_1

    if-eq v6, v9, :cond_1

    if-eq v7, v10, :cond_1

    const/16 v5, 0x5a

    const/16 v4, 0x10e

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v53, v4

    move v4, v5

    move/from16 v5, v53

    :goto_0
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "videoconvert"

    const/4 v11, 0x0

    invoke-virtual {v6, v7, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v48

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "isPreviousOk"

    const/4 v7, 0x1

    move-object/from16 v0, v48

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-interface/range {v48 .. v48}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v8, "isPreviousOk"

    const/4 v12, 0x0

    invoke-interface {v7, v8, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez v6, :cond_4

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    invoke-interface/range {v48 .. v48}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "isPreviousOk"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_1
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x14

    if-le v11, v12, :cond_55

    const/16 v11, 0x5a

    if-ne v5, v11, :cond_2

    const/4 v5, 0x0

    const/16 v4, 0x10e

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v53, v4

    move v4, v5

    move/from16 v5, v53

    goto :goto_0

    :cond_2
    const/16 v11, 0xb4

    if-ne v5, v11, :cond_3

    const/16 v4, 0xb4

    const/4 v5, 0x0

    move/from16 v23, v7

    move/from16 v24, v6

    move/from16 v53, v4

    move v4, v5

    move/from16 v5, v53

    goto :goto_0

    :cond_3
    const/16 v11, 0x10e

    if-ne v5, v11, :cond_55

    const/4 v5, 0x0

    const/16 v4, 0x5a

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v53, v4

    move v4, v5

    move/from16 v5, v53

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    const/16 v27, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v50

    if-eqz v24, :cond_48

    if-eqz v23, :cond_48

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v49, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v49 .. v49}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v8, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct {v8}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    invoke-virtual {v8, v4}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    new-instance v4, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v4}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;)Lorg/telegram/messenger/video/MP4Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v35

    :try_start_1
    new-instance v34, Landroid/media/MediaExtractor;

    invoke-direct/range {v34 .. v34}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    move/from16 v0, v24

    if-ne v0, v9, :cond_5

    move/from16 v0, v23

    if-ne v0, v10, :cond_5

    if-eqz v5, :cond_45

    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v4}, Lorg/telegram/messenger/MediaController;->selectTrack(Landroid/media/MediaExtractor;Z)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v52

    if-ltz v52, :cond_54

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-wide/16 v16, -0x1

    const/16 v39, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/16 v38, -0x5

    const/4 v4, 0x0

    :try_start_3
    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x12

    if-ge v8, v15, :cond_17

    const-string/jumbo v8, "video/avc"

    invoke-static {v8}, Lorg/telegram/messenger/MediaController;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v15

    const-string/jumbo v8, "video/avc"

    invoke-static {v15, v8}, Lorg/telegram/messenger/MediaController;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_d

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "no supported color format"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v4

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    :goto_2
    :try_start_4
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v4, 0x1

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    :goto_3
    move-object/from16 v0, v34

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    if-eqz v32, :cond_6

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/messenger/video/OutputSurface;->release()V

    :cond_6
    if-eqz v33, :cond_7

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/messenger/video/InputSurface;->release()V

    :cond_7
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v7}, Landroid/media/MediaCodec;->release()V

    :cond_8
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v12}, Landroid/media/MediaCodec;->release()V

    :cond_9
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    :goto_4
    move-wide/from16 v10, v30

    :goto_5
    if-nez v4, :cond_a

    const/4 v5, -0x1

    move/from16 v0, v42

    if-eq v0, v5, :cond_a

    const/4 v15, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, v34

    move-object/from16 v8, v35

    move-object/from16 v9, v49

    move-wide/from16 v12, v46

    move-object/from16 v14, v45

    invoke-direct/range {v5 .. v15}, Lorg/telegram/messenger/MediaController;->readAndWriteTrack(Lorg/telegram/messenger/MessageObject;Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_a
    if-eqz v34, :cond_b

    invoke-virtual/range {v34 .. v34}, Landroid/media/MediaExtractor;->release()V

    :cond_b
    if-eqz v35, :cond_c

    const/4 v5, 0x0

    :try_start_5
    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_c
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v50

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :goto_7
    invoke-interface/range {v48 .. v48}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "isPreviousOk"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2, v5, v4}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_d
    :try_start_6
    invoke-virtual {v15}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "OMX.qcom."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_13

    const/4 v4, 0x1

    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    const-string/jumbo v18, "lge"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_e

    const-string/jumbo v18, "nokia"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    :cond_e
    const/4 v11, 0x1

    :cond_f
    :goto_8
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "codec = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v18, " manufacturer = "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v18, "device = "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    move/from16 v44, v8

    move v8, v4

    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "colorFormat = "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    const/4 v4, 0x0

    mul-int v15, v24, v23

    mul-int/lit8 v15, v15, 0x3

    div-int/lit8 v15, v15, 0x2

    if-nez v8, :cond_18

    rem-int/lit8 v8, v23, 0x10

    if-eqz v8, :cond_53

    rem-int/lit8 v4, v23, 0x10

    rsub-int/lit8 v4, v4, 0x10

    add-int v4, v4, v23

    sub-int v4, v4, v23

    mul-int v4, v4, v24

    mul-int/lit8 v8, v4, 0x5

    div-int/lit8 v8, v8, 0x4

    add-int/2addr v15, v8

    move/from16 v43, v4

    :goto_a
    move-object/from16 v0, v34

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const-wide/16 v18, 0x0

    cmp-long v4, v30, v18

    if-lez v4, :cond_1b

    const/4 v4, 0x0

    move-object/from16 v0, v34

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_b
    move-object/from16 v0, v34

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v10

    const-string/jumbo v4, "video/avc"

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v4, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v8

    const-string/jumbo v4, "color-format"

    move/from16 v0, v44

    invoke-virtual {v8, v4, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v18, "bitrate"

    if-lez v42, :cond_1e

    move/from16 v4, v42

    :goto_c
    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v4, "frame-rate"

    const/16 v18, 0x19

    move/from16 v0, v18

    invoke-virtual {v8, v4, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v4, "i-frame-interval"

    const/16 v18, 0xa

    move/from16 v0, v18

    invoke-virtual {v8, v4, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x12

    move/from16 v0, v18

    if-ge v4, v0, :cond_10

    const-string/jumbo v4, "stride"

    add-int/lit8 v18, v24, 0x20

    move/from16 v0, v18

    invoke-virtual {v8, v4, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v4, "slice-height"

    move/from16 v0, v23

    invoke-virtual {v8, v4, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_10
    const-string/jumbo v4, "video/avc"

    invoke-static {v4}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v12

    const/4 v4, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v8, v4, v0, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x12

    if-lt v4, v8, :cond_52

    new-instance v8, Lorg/telegram/messenger/video/InputSurface;

    invoke-virtual {v12}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/telegram/messenger/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v8}, Lorg/telegram/messenger/video/InputSurface;->makeCurrent()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v33, v8

    :goto_d
    :try_start_8
    invoke-virtual {v12}, Landroid/media/MediaCodec;->start()V

    const-string/jumbo v4, "mime"

    invoke-virtual {v10, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v4

    :try_start_9
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x12

    if-lt v7, v8, :cond_1f

    new-instance v32, Lorg/telegram/messenger/video/OutputSurface;

    invoke-direct/range {v32 .. v32}, Lorg/telegram/messenger/video/OutputSurface;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_e
    :try_start_a
    invoke-virtual/range {v32 .. v32}, Lorg/telegram/messenger/video/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v10, v5, v6, v7}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    const/4 v6, 0x0

    const/16 v37, 0x0

    const/4 v5, 0x0

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_51

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v12}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v37

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x12

    if-ge v7, v8, :cond_50

    invoke-virtual {v12}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object/from16 v40, v5

    move-object/from16 v41, v6

    :goto_f
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    :goto_10
    if-nez v39, :cond_44

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    if-nez v13, :cond_4f

    const/16 v18, 0x0

    invoke-virtual/range {v34 .. v34}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v5

    move/from16 v0, v52

    if-ne v5, v0, :cond_23

    const-wide/16 v6, 0x9c4

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_22

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v6, v7, :cond_20

    aget-object v6, v41, v5

    :goto_11
    const/4 v7, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    if-gez v7, :cond_21

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v5, 0x1

    :goto_12
    move v7, v5

    move/from16 v5, v18

    :goto_13
    if-eqz v5, :cond_11

    const-wide/16 v8, 0x9c4

    invoke-virtual {v4, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v7, 0x1

    :cond_11
    :goto_14
    if-nez v14, :cond_24

    const/4 v5, 0x1

    :goto_15
    const/16 v36, 0x1

    move/from16 v10, v36

    move/from16 v19, v5

    move-object/from16 v13, v37

    move v6, v14

    move-wide/from16 v8, v16

    move/from16 v14, v39

    move/from16 v5, v38

    :goto_16
    if-nez v19, :cond_12

    if-eqz v10, :cond_43

    :cond_12
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    const-wide/16 v16, 0x9c4

    move-object/from16 v0, v49

    move-wide/from16 v1, v16

    invoke-virtual {v12, v0, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v17

    const/16 v16, -0x1

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_25

    const/4 v10, 0x0

    move/from16 v36, v10

    move-object/from16 v37, v13

    move/from16 v38, v5

    move/from16 v39, v14

    :goto_17
    const/4 v5, -0x1

    move/from16 v0, v17

    if-eq v0, v5, :cond_33

    move/from16 v10, v36

    move-object/from16 v13, v37

    move/from16 v5, v38

    move/from16 v14, v39

    goto :goto_16

    :cond_13
    :try_start_b
    const-string/jumbo v19, "OMX.Intel."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_14

    const/4 v4, 0x2

    goto/16 :goto_8

    :cond_14
    const-string/jumbo v19, "OMX.MTK.VIDEO.ENCODER.AVC"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    const/4 v4, 0x3

    goto/16 :goto_8

    :cond_15
    const-string/jumbo v19, "OMX.SEC.AVC.Encoder"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    const/4 v4, 0x4

    const/4 v11, 0x1

    goto/16 :goto_8

    :cond_16
    const-string/jumbo v19, "OMX.TI.DUCATI1.VIDEO.H264E"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    const/4 v4, 0x5

    goto/16 :goto_8

    :cond_17
    const v8, 0x7f000789

    move/from16 v44, v8

    move v8, v4

    goto/16 :goto_9

    :cond_18
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_19

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "lge"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_53

    mul-int v4, v24, v23

    add-int/lit16 v4, v4, 0x7ff

    and-int/lit16 v4, v4, -0x800

    mul-int v8, v24, v23

    sub-int/2addr v4, v8

    add-int/2addr v15, v4

    move/from16 v43, v4

    goto/16 :goto_a

    :cond_19
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v8, v0, :cond_1a

    move/from16 v43, v4

    goto/16 :goto_a

    :cond_1a
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v8, v0, :cond_53

    const-string/jumbo v8, "baidu"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_53

    rem-int/lit8 v4, v23, 0x10

    rsub-int/lit8 v4, v4, 0x10

    add-int v4, v4, v23

    sub-int v4, v4, v23

    mul-int v4, v4, v24

    mul-int/lit8 v8, v4, 0x5

    div-int/lit8 v8, v8, 0x4

    add-int/2addr v15, v8

    move/from16 v43, v4

    goto/16 :goto_a

    :cond_1b
    const-wide/16 v18, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v34

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_b

    :catchall_0
    move-exception v4

    :goto_18
    if-eqz v34, :cond_1c

    invoke-virtual/range {v34 .. v34}, Landroid/media/MediaExtractor;->release()V

    :cond_1c
    if-eqz v35, :cond_1d

    const/4 v5, 0x0

    :try_start_c
    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie(Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    :cond_1d
    :goto_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v50

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    throw v4

    :cond_1e
    const v4, 0xe1000

    goto/16 :goto_c

    :cond_1f
    :try_start_d
    new-instance v32, Lorg/telegram/messenger/video/OutputSurface;

    move-object/from16 v0, v32

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v5}, Lorg/telegram/messenger/video/OutputSurface;-><init>(III)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_e

    :catch_1
    move-exception v5

    move-object v7, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, v33

    goto/16 :goto_2

    :cond_20
    :try_start_e
    invoke-virtual {v4, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    goto/16 :goto_11

    :cond_21
    const/4 v6, 0x0

    invoke-virtual/range {v34 .. v34}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-virtual/range {v34 .. v34}, Landroid/media/MediaExtractor;->advance()Z

    :cond_22
    move v5, v13

    goto/16 :goto_12

    :cond_23
    const/4 v6, -0x1

    if-ne v5, v6, :cond_4e

    const/4 v5, 0x1

    move v7, v13

    goto/16 :goto_13

    :cond_24
    const/4 v5, 0x0

    goto/16 :goto_15

    :cond_25
    const/16 v16, -0x3

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_26

    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x15

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_2d

    invoke-virtual {v12}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v13

    move/from16 v36, v10

    move-object/from16 v37, v13

    move/from16 v38, v5

    move/from16 v39, v14

    goto/16 :goto_17

    :cond_26
    const/16 v16, -0x2

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_28

    invoke-virtual {v12}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v16

    const/16 v18, -0x5

    move/from16 v0, v18

    if-ne v5, v0, :cond_27

    const/4 v5, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v5

    :cond_27
    move/from16 v36, v10

    move-object/from16 v37, v13

    move/from16 v38, v5

    move/from16 v39, v14

    goto/16 :goto_17

    :cond_28
    if-gez v17, :cond_29

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_2
    move-exception v5

    move-object/from16 v6, v33

    move-object v7, v4

    move-object v4, v5

    move-object/from16 v5, v32

    goto/16 :goto_2

    :cond_29
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x15

    move/from16 v0, v16

    if-ge v14, v0, :cond_2a

    aget-object v14, v13, v17

    :goto_1a
    if-nez v14, :cond_2b

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "encoderOutputBuffer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " was null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2a
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    goto :goto_1a

    :cond_2b
    move-object/from16 v0, v49

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v16, v0

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_2c

    move-object/from16 v0, v49

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x2

    if-nez v16, :cond_2e

    const/16 v16, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    move/from16 v2, v16

    invoke-virtual {v0, v5, v14, v1, v2}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    move-result v14

    if-eqz v14, :cond_2c

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v14, v3}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    :cond_2c
    :goto_1b
    move-object/from16 v0, v49

    iget v14, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_32

    const/4 v14, 0x1

    :goto_1c
    const/16 v16, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_2d
    move/from16 v36, v10

    move-object/from16 v37, v13

    move/from16 v38, v5

    move/from16 v39, v14

    goto/16 :goto_17

    :cond_2e
    const/16 v16, -0x5

    move/from16 v0, v16

    if-ne v5, v0, :cond_2c

    move-object/from16 v0, v49

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v5, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v49

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v49

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v16, v0

    add-int v5, v5, v16

    invoke-virtual {v14, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-object/from16 v0, v49

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v14, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v14, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v49

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    :goto_1d
    if-ltz v16, :cond_2f

    const/16 v20, 0x3

    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_2f

    aget-byte v20, v18, v16

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_31

    add-int/lit8 v20, v16, -0x1

    aget-byte v20, v18, v20

    if-nez v20, :cond_31

    add-int/lit8 v20, v16, -0x2

    aget-byte v20, v18, v20

    if-nez v20, :cond_31

    add-int/lit8 v20, v16, -0x3

    aget-byte v20, v18, v20

    if-nez v20, :cond_31

    add-int/lit8 v5, v16, -0x3

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    move-object/from16 v0, v49

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v20, v16, -0x3

    sub-int v5, v5, v20

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/16 v20, 0x0

    add-int/lit8 v21, v16, -0x3

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v14, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v20, v16, -0x3

    move-object/from16 v0, v49

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v21, v0

    add-int/lit8 v16, v16, -0x3

    sub-int v16, v21, v16

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-virtual {v5, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v16

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2f
    const-string/jumbo v16, "video/avc"

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v16

    if-eqz v14, :cond_30

    if-eqz v5, :cond_30

    const-string/jumbo v18, "csd-0"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const-string/jumbo v14, "csd-1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v5}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_30
    const/4 v5, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v5

    goto/16 :goto_1b

    :cond_31
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_1d

    :cond_32
    const/4 v14, 0x0

    goto/16 :goto_1c

    :cond_33
    if-nez v6, :cond_4d

    const-wide/16 v16, 0x9c4

    move-object/from16 v0, v49

    move-wide/from16 v1, v16

    invoke-virtual {v4, v0, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v10

    const/4 v5, -0x1

    if-ne v10, v5, :cond_34

    const/4 v5, 0x0

    :goto_1e
    move/from16 v10, v36

    move/from16 v19, v5

    move-object/from16 v13, v37

    move/from16 v14, v39

    move/from16 v5, v38

    goto/16 :goto_16

    :cond_34
    const/4 v5, -0x3

    if-ne v10, v5, :cond_35

    move/from16 v5, v19

    goto :goto_1e

    :cond_35
    const/4 v5, -0x2

    if-ne v10, v5, :cond_36

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "newFormat = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    move/from16 v5, v19

    goto :goto_1e

    :cond_36
    if-gez v10, :cond_37

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_37
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x12

    if-lt v5, v13, :cond_3b

    move-object/from16 v0, v49

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v5, :cond_3a

    const/4 v5, 0x1

    :goto_1f
    const-wide/16 v16, 0x0

    cmp-long v13, v46, v16

    if-lez v13, :cond_38

    move-object/from16 v0, v49

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v16, v0

    cmp-long v13, v16, v46

    if-ltz v13, :cond_38

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v49

    iget v13, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v13, v13, 0x4

    move-object/from16 v0, v49

    iput v13, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    :cond_38
    move/from16 v25, v6

    move/from16 v26, v7

    const-wide/16 v6, 0x0

    cmp-long v6, v30, v6

    if-lez v6, :cond_4c

    const-wide/16 v6, -0x1

    cmp-long v6, v8, v6

    if-nez v6, :cond_4c

    move-object/from16 v0, v49

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v6, v6, v30

    if-gez v6, :cond_3e

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "drop frame startTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v30

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " present time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v49

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    move-wide/from16 v28, v8

    :goto_20
    invoke-virtual {v4, v10, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v5, :cond_39

    const/4 v5, 0x0

    :try_start_f
    invoke-virtual/range {v32 .. v32}, Lorg/telegram/messenger/video/OutputSurface;->awaitNewImage()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :goto_21
    if-nez v5, :cond_39

    :try_start_10
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_3f

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/video/OutputSurface;->drawImage(Z)V

    move-object/from16 v0, v49

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/video/InputSurface;->setPresentationTime(J)V

    invoke-virtual/range {v33 .. v33}, Lorg/telegram/messenger/video/InputSurface;->swapBuffers()Z

    :cond_39
    :goto_22
    move-object/from16 v0, v49

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_4b

    const/4 v5, 0x0

    const-string/jumbo v6, "decoder stream end"

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_41

    invoke-virtual {v12}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    move/from16 v6, v25

    move/from16 v7, v26

    move-wide/from16 v8, v28

    goto/16 :goto_1e

    :cond_3a
    const/4 v5, 0x0

    goto/16 :goto_1f

    :cond_3b
    move-object/from16 v0, v49

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v5, :cond_3c

    move-object/from16 v0, v49

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v16, v0

    const-wide/16 v20, 0x0

    cmp-long v5, v16, v20

    if-eqz v5, :cond_3d

    :cond_3c
    const/4 v5, 0x1

    goto/16 :goto_1f

    :cond_3d
    const/4 v5, 0x0

    goto/16 :goto_1f

    :cond_3e
    move-object/from16 v0, v49

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v28, v8

    goto :goto_20

    :catch_3
    move-exception v6

    const/4 v5, 0x1

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_21

    :cond_3f
    const-wide/16 v6, 0x9c4

    invoke-virtual {v12, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v13

    if-ltz v13, :cond_40

    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/video/OutputSurface;->drawImage(Z)V

    invoke-virtual/range {v32 .. v32}, Lorg/telegram/messenger/video/OutputSurface;->getFrame()Ljava/nio/ByteBuffer;

    move-result-object v5

    aget-object v6, v40, v13

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move/from16 v7, v44

    move/from16 v8, v24

    move/from16 v9, v23

    move/from16 v10, v43

    invoke-static/range {v5 .. v11}, Lorg/telegram/messenger/Utilities;->convertVideoFrame(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)I

    const/4 v14, 0x0

    move-object/from16 v0, v49

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_22

    :cond_40
    const-string/jumbo v5, "input buffer not available"

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_22

    :cond_41
    const-wide/16 v6, 0x9c4

    invoke-virtual {v12, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v17

    if-ltz v17, :cond_42

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, v49

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v20, v0

    const/16 v22, 0x4

    move-object/from16 v16, v12

    invoke-virtual/range {v16 .. v22}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_42
    move/from16 v6, v25

    move/from16 v7, v26

    move-wide/from16 v8, v28

    goto/16 :goto_1e

    :cond_43
    move-object/from16 v37, v13

    move/from16 v38, v5

    move/from16 v39, v14

    move-wide/from16 v16, v8

    move v14, v6

    move v13, v7

    goto/16 :goto_10

    :cond_44
    const-wide/16 v6, -0x1

    cmp-long v5, v16, v6

    if-eqz v5, :cond_4a

    move-wide/from16 v6, v16

    :goto_23
    move-wide/from16 v30, v6

    move-object v7, v4

    move/from16 v4, v27

    goto/16 :goto_3

    :cond_45
    const/4 v15, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, v34

    move-object/from16 v8, v35

    move-object/from16 v9, v49

    move-wide/from16 v10, v30

    move-wide/from16 v12, v46

    move-object/from16 v14, v45

    :try_start_11
    invoke-direct/range {v5 .. v15}, Lorg/telegram/messenger/MediaController;->readAndWriteTrack(Lorg/telegram/messenger/MessageObject;Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result-wide v10

    const-wide/16 v4, -0x1

    cmp-long v4, v10, v4

    if-eqz v4, :cond_49

    move/from16 v4, v27

    goto/16 :goto_5

    :catch_4
    move-exception v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :catch_5
    move-exception v4

    move-object v5, v4

    :goto_24
    const/4 v4, 0x1

    :try_start_12
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz v6, :cond_46

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    :cond_46
    if-eqz v7, :cond_47

    const/4 v5, 0x0

    :try_start_13
    invoke-virtual {v7, v5}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie(Z)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    :cond_47
    :goto_25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v50

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_6
    move-exception v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_25

    :catch_7
    move-exception v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_19

    :cond_48
    invoke-interface/range {v48 .. v48}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "isPreviousOk"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    const/4 v4, 0x0

    goto/16 :goto_1

    :catchall_1
    move-exception v4

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    goto/16 :goto_18

    :catchall_2
    move-exception v4

    move-object/from16 v34, v6

    goto/16 :goto_18

    :catchall_3
    move-exception v4

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    goto/16 :goto_18

    :catch_8
    move-exception v4

    move-object v5, v4

    move-object/from16 v7, v35

    goto :goto_24

    :catch_9
    move-exception v4

    move-object v5, v4

    move-object/from16 v6, v34

    move-object/from16 v7, v35

    goto :goto_24

    :catch_a
    move-exception v4

    move-object v5, v6

    move-object v7, v9

    move-object v6, v8

    goto/16 :goto_2

    :catch_b
    move-exception v4

    move-object v5, v6

    move-object v7, v9

    move-object/from16 v6, v33

    goto/16 :goto_2

    :cond_49
    move-wide/from16 v10, v30

    move/from16 v4, v27

    goto/16 :goto_5

    :cond_4a
    move-wide/from16 v6, v30

    goto/16 :goto_23

    :cond_4b
    move/from16 v5, v19

    move/from16 v6, v25

    move/from16 v7, v26

    move-wide/from16 v8, v28

    goto/16 :goto_1e

    :cond_4c
    move-wide/from16 v28, v8

    goto/16 :goto_20

    :cond_4d
    move/from16 v5, v19

    goto/16 :goto_1e

    :cond_4e
    move/from16 v5, v18

    move v7, v13

    goto/16 :goto_13

    :cond_4f
    move v7, v13

    goto/16 :goto_14

    :cond_50
    move-object/from16 v40, v5

    move-object/from16 v41, v6

    goto/16 :goto_f

    :cond_51
    move-object/from16 v40, v5

    move-object/from16 v41, v6

    goto/16 :goto_f

    :cond_52
    move-object/from16 v33, v7

    goto/16 :goto_d

    :cond_53
    move/from16 v43, v4

    goto/16 :goto_a

    :cond_54
    move/from16 v4, v27

    goto/16 :goto_4

    :cond_55
    move/from16 v23, v7

    move/from16 v24, v6

    move/from16 v53, v4

    move v4, v5

    move/from16 v5, v53

    goto/16 :goto_0
.end method

.method public static copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/MediaController;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    sget v1, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    sget v2, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    const/4 v2, 0x0

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%d.%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v4, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v1, 0x5000

    :try_start_2
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    :try_start_3
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_3
    return-object v0

    :cond_3
    :try_start_6
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v0

    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_4
    :goto_4
    if-eqz v2, :cond_2

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_3
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_4
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_5
    if-eqz v3, :cond_5

    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :cond_5
    :goto_6
    if-eqz v2, :cond_6

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :cond_6
    :goto_7
    throw v0

    :catch_5
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_6
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_1

    :catch_8
    move-exception v1

    move-object v2, v0

    goto :goto_1
.end method

.method private didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V
    .locals 7

    iget-boolean v6, p0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    if-eqz v6, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    :cond_0
    new-instance v0, Lorg/telegram/messenger/MediaController$25;

    move-object v1, p0

    move v2, p4

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MediaController$25;-><init>(Lorg/telegram/messenger/MediaController;ZZLorg/telegram/messenger/MessageObject;Ljava/io/File;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getCurrentDownloadMask()I
    .locals 1

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isConnectedToWiFi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    goto :goto_0
.end method

.method public static getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "_display_name"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "_display_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    :cond_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_1
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_3
    move-object v0, v6

    goto :goto_0

    :cond_4
    move-object v0, v6

    goto :goto_0
.end method

.method public static getInstance()Lorg/telegram/messenger/MediaController;
    .locals 2

    sget-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    if-nez v0, :cond_1

    const-class v1, Lorg/telegram/messenger/MediaController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/MediaController;

    invoke-direct {v0}, Lorg/telegram/messenger/MediaController;-><init>()V

    sput-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    :cond_0
    monitor-exit v1

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private native getTotalPcmDuration()J
.end method

.method public static isGif(Landroid/net/Uri;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x3

    const/4 v2, 0x0

    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v1, 0x3

    new-array v1, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ne v3, v5, :cond_1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    if-eqz v3, :cond_1

    const-string/jumbo v1, "gif"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_1
    throw v0

    :catch_4
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private isNearToSensor(F)Z
    .locals 1

    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native isOpusFile(Ljava/lang/String;)I
.end method

.method private static isRecognizedFormat(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x27 -> :sswitch_0
        0x7f000100 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isWebp(Landroid/net/Uri;)Z
    .locals 6

    const/4 v0, 0x0

    const/16 v5, 0xc

    const/4 v2, 0x0

    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/16 v1, 0xc

    new-array v1, v1, [B

    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ne v3, v5, :cond_1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "riff"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "webp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_1
    throw v0

    :catch_4
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static loadGalleryPhotosAlbums(I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/MediaController$23;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$23;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private native openOpusFile(Ljava/lang/String;)I
.end method

.method private playNextMessage(Z)V
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    :goto_0
    if-eqz p1, :cond_2

    iget v1, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, v4, v4}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_6

    iput v4, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-eqz p1, :cond_6

    iget v1, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    if-nez v1, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    :try_start_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_4
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    iput v4, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    iput v4, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput v4, v0, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    :try_start_4
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    :try_start_5
    monitor-exit v1

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catch_3
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :cond_6
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto/16 :goto_1
.end method

.method private processLaterArrays()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-virtual {p0, v1, v0}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private readAndWriteTrack(Lorg/telegram/messenger/MessageObject;Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    .locals 19
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p10

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->selectTrack(Landroid/media/MediaExtractor;Z)I

    move-result v9

    if-ltz v9, :cond_f

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/media/MediaExtractor;->selectTrack(I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    move-object/from16 v0, p3

    move/from16 v1, p10

    invoke-virtual {v0, v4, v1}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v12

    const-string/jumbo v5, "max-input-size"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    cmp-long v5, p5, v6

    if-lez v5, :cond_3

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_0
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    const-wide/16 v10, -0x1

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    :goto_1
    if-nez v8, :cond_e

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v4

    if-ne v4, v9, :cond_c

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    move-object/from16 v0, p4

    iput v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p4

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v13, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    if-nez p10, :cond_6

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int v15, v5, v4

    const/4 v6, -0x1

    :goto_2
    add-int/lit8 v4, v15, -0x4

    if-gt v5, v4, :cond_6

    aget-byte v4, v14, v5

    if-nez v4, :cond_1

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, v14, v4

    if-nez v4, :cond_1

    add-int/lit8 v4, v5, 0x2

    aget-byte v4, v14, v4

    if-nez v4, :cond_1

    add-int/lit8 v4, v5, 0x3

    aget-byte v4, v14, v4

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v4, v0, :cond_2

    :cond_1
    add-int/lit8 v4, v15, -0x4

    if-ne v5, v4, :cond_12

    :cond_2
    const/4 v4, -0x1

    if-eq v6, v4, :cond_5

    sub-int v16, v5, v6

    add-int/lit8 v4, v15, -0x4

    if-eq v5, v4, :cond_4

    const/4 v4, 0x4

    :goto_3
    sub-int v4, v16, v4

    shr-int/lit8 v16, v4, 0x18

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v14, v6

    add-int/lit8 v16, v6, 0x1

    shr-int/lit8 v17, v4, 0x10

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v14, v16

    add-int/lit8 v16, v6, 0x2

    shr-int/lit8 v17, v4, 0x8

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v14, v16

    add-int/lit8 v6, v6, 0x3

    int-to-byte v4, v4

    aput-byte v4, v14, v6

    move v4, v5

    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v6, v4

    goto :goto_2

    :cond_3
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    move v4, v5

    goto :goto_4

    :cond_6
    move-object/from16 v0, p4

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v4, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    move-object/from16 v0, p4

    iput-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move v4, v7

    :goto_5
    move-object/from16 v0, p4

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v5, :cond_11

    if-nez v4, :cond_11

    const-wide/16 v6, 0x0

    cmp-long v5, p5, v6

    if-lez v5, :cond_7

    const-wide/16 v6, -0x1

    cmp-long v5, v10, v6

    if-nez v5, :cond_7

    move-object/from16 v0, p4

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_7
    const-wide/16 v6, 0x0

    cmp-long v5, p7, v6

    if-ltz v5, :cond_8

    move-object/from16 v0, p4

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v5, v6, p7

    if-gez v5, :cond_b

    :cond_8
    const/4 v5, 0x0

    move-object/from16 v0, p4

    iput v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v5

    move-object/from16 v0, p4

    iput v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v12, v13, v1, v5}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2, v5, v6}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    move v7, v4

    :goto_6
    if-nez v7, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->advance()Z

    :cond_9
    :goto_7
    if-eqz v7, :cond_10

    const/4 v4, 0x1

    :goto_8
    move v8, v4

    goto/16 :goto_1

    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p4

    iput v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v4, 0x1

    goto :goto_5

    :cond_b
    const/4 v4, 0x1

    move v7, v4

    goto :goto_6

    :cond_c
    const/4 v5, -0x1

    if-ne v4, v5, :cond_d

    const/4 v7, 0x1

    goto :goto_7

    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_7

    :cond_e
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    move-wide v4, v10

    :goto_9
    return-wide v4

    :cond_f
    const-wide/16 v4, -0x1

    goto :goto_9

    :cond_10
    move v4, v8

    goto :goto_8

    :cond_11
    move v7, v4

    goto :goto_6

    :cond_12
    move v4, v6

    goto/16 :goto_4
.end method

.method private native readOpusFile(Ljava/nio/ByteBuffer;I[I)V
.end method

.method public static saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v3, v0

    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    new-array v4, v2, [Z

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_3

    :try_start_0
    new-instance v5, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x2

    invoke-direct {v5, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v0, "Loading"

    const v1, 0x7f0802df

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    new-instance v0, Lorg/telegram/messenger/MediaController$21;

    invoke-direct {v0, v4}, Lorg/telegram/messenger/MediaController$21;-><init>([Z)V

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lorg/telegram/messenger/MediaController$22;

    move v1, p2

    move-object v2, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MediaController$22;-><init>(ILjava/lang/String;Ljava/io/File;[ZLorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_3
    move-object v5, v0

    goto :goto_2

    :cond_4
    move-object v3, v0

    goto :goto_1
.end method

.method private native seekOpusFile(F)I
.end method

.method private seekOpusPlayer(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MediaController$12;-><init>(Lorg/telegram/messenger/MediaController;F)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v5

    const/4 v0, 0x0

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_5

    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v4, v3

    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v8, v6, v4

    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "OMX.SEC.avc.enc"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_2
    return-object v1

    :cond_3
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "OMX.SEC.AVC.Encoder"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_2
.end method

.method public static selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v3

    move v1, v0

    :goto_0
    iget-object v2, v3, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, v3, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v2, v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->isRecognizedFormat(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "OMX.SEC.AVC.Encoder"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    if-eq v2, v1, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method private selectTrack(Landroid/media/MediaExtractor;Z)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string/jumbo v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string/jumbo v3, "audio/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    const-string/jumbo v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, -0x5

    goto :goto_1
.end method

.method private setPlayerVolume()V
    .locals 2

    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0, v0}, Landroid/media/AudioTrack;->setStereoVolume(FF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private startAudioAgain(Z)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->audioRouteChanged:I

    new-array v5, v1, [Ljava/lang/Object;

    iget-boolean v6, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v4, v4, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-virtual {p0, v2, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    iput v4, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    if-eqz p1, :cond_0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/telegram/messenger/MediaController$9;

    invoke-direct {v0, p0, v3}, Lorg/telegram/messenger/MediaController$9;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0
.end method

.method private startProgressTimer(Lorg/telegram/messenger/MessageObject;)V
    .locals 7

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/messenger/MediaController$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MediaController$5;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x11

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    monitor-exit v6

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private native startRecord(Ljava/lang/String;)I
.end method

.method private startVideoConvertFromQueue()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    new-instance v4, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v5, Lorg/telegram/messenger/VideoEncodingService;

    invoke-direct {v4, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "path"

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_0

    move v2, v1

    :goto_0
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "gif"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/MediaController$VideoConvertRunnable;->runConversion(Lorg/telegram/messenger/MessageObject;)V

    move v1, v3

    :cond_2
    return v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method private stopProgressTimer()V
    .locals 2

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private native stopRecord()V
.end method

.method private stopRecordingInternal(I)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MediaController$19;

    invoke-direct {v3, p0, v0, v1, p1}, Lorg/telegram/messenger/MediaController$19;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/io/File;I)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private native writeFrame(Ljava/nio/ByteBuffer;I)I
.end method


# virtual methods
.method public addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    return-void
.end method

.method public addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-interface {p3}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addLoadingFileObserver2(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-interface {p3}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public canAutoplayGifs()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    return v0
.end method

.method public canCustomTabs()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    return v0
.end method

.method public canDirectShare()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    return v0
.end method

.method public canDownloadMedia(I)Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRaiseToSpeak()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    return v0
.end method

.method public canSaveToGallery()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    return v0
.end method

.method public cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V
    .locals 2

    if-nez p1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public checkAutodownloadSettings()V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v3

    iget v0, p0, Lorg/telegram/messenger/MediaController;->lastCheckMask:I

    if-ne v3, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v3, p0, Lorg/telegram/messenger/MediaController;->lastCheckMask:I

    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    :cond_2
    :goto_1
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    :cond_3
    :goto_2
    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    :cond_4
    :goto_3
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    :cond_5
    :goto_4
    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    :cond_6
    :goto_5
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    :cond_7
    :goto_6
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    goto :goto_0

    :cond_8
    move v1, v2

    :goto_7
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DownloadObject;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    iget-object v0, v0, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    :cond_a
    move v1, v2

    :goto_8
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DownloadObject;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    iget-object v0, v0, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_2

    :cond_c
    move v1, v2

    :goto_9
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DownloadObject;

    iget-object v0, v0, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_d
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    :cond_e
    move v1, v2

    :goto_a
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_f

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DownloadObject;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    iget-object v0, v0, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_f
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_4

    :cond_10
    move v1, v2

    :goto_b
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_11

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DownloadObject;

    iget-object v0, v0, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_11
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_5

    :cond_12
    move v1, v2

    :goto_c
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_13

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DownloadObject;

    iget-object v0, v0, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_13
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_6

    :cond_14
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_15

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    :cond_15
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_16

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    :cond_16
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_17

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    :cond_17
    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_18

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    :cond_18
    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_19

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    :cond_19
    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    goto/16 :goto_0
.end method

.method public checkSaveToGalleryFiles()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "Telegram"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "Telegram Images"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "Telegram Video"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, ".nomedia"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, ".nomedia"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, ".nomedia"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, ".nomedia"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public cleanupPlayer(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZZ)V

    return-void
.end method

.method public cleanupPlayer(ZZZ)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    iput v5, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    iput v5, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    iput v2, v1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput v5, v1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz p1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iput v5, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    if-eqz p3, :cond_7

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    :cond_2
    :goto_3
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    :cond_3
    :goto_4
    if-eqz p2, :cond_4

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_4
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->stopRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    :cond_5
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    :try_start_4
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    :try_start_5
    monitor-exit v1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catch_3
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :cond_7
    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->startRecordingIfFromSpeaker()V

    :cond_9
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 12

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    if-eq p1, v0, :cond_0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    if-ne p1, v0, :cond_5

    :cond_0
    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    aget-object v0, p2, v5

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    move v4, v5

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-interface {v3, v0}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onFailedDownload(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-interface {v2}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    aget-object v1, p2, v6

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/MediaController;->checkDownloadFinished(Ljava/lang/String;I)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    sget v0, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    if-eq p1, v0, :cond_6

    sget v0, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoaded:I

    if-ne p1, v0, :cond_d

    :cond_6
    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    aget-object v0, p2, v5

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    :cond_7
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    move v3, v5

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_8

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iput-boolean v6, v2, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    move v4, v5

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_b

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-interface {v3, v0}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onSuccessDownload(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-interface {v2}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    :cond_b
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    invoke-direct {p0, v0, v5}, Lorg/telegram/messenger/MediaController;->checkDownloadFinished(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_d
    sget v0, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    if-ne p1, v0, :cond_10

    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    aget-object v0, p2, v5

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_f

    aget-object v2, p2, v6

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-interface {v1, v0, v4}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onProgressDownload(Ljava/lang/String;F)V

    goto :goto_4

    :cond_f
    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    goto/16 :goto_1

    :cond_10
    sget v0, Lorg/telegram/messenger/NotificationCenter;->FileUploadProgressChanged:I

    if-ne p1, v0, :cond_18

    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    aget-object v0, p2, v5

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_12

    aget-object v2, p2, v6

    check-cast v2, Ljava/lang/Float;

    const/4 v3, 0x2

    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v1, v0, v6, v7}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onProgressUpload(Ljava/lang/String;FZ)V

    goto :goto_5

    :cond_12
    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/SendMessagesHelper;->getDelayedMessages(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v1, :cond_15

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0xfa0

    add-long/2addr v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v1, v8, v10

    if-gez v1, :cond_15

    :cond_13
    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v6, v7, v1, v3}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V

    :cond_14
    :goto_7
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_16
    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v1, :cond_17

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v6, v7, v1, v3}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_17
    :try_start_1
    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_14

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v6, v7, v1, v3}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :cond_18
    sget v0, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    if-ne p1, v0, :cond_1b

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, p2, v5

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-ne v2, v1, :cond_19

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0, v6, v6}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    :cond_19
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-ne v2, v1, :cond_4

    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_1a

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_1b
    sget v0, Lorg/telegram/messenger/NotificationCenter;->removeAllMessagesFromDialog:I

    if-ne p1, v0, :cond_1c

    aget-object v0, p2, v5

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v5, v6}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    goto/16 :goto_1

    :cond_1c
    sget v0, Lorg/telegram/messenger/NotificationCenter;->musicDidLoaded:I

    if-ne p1, v0, :cond_1e

    aget-object v0, p2, v5

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_4

    aget-object v0, p2, v6

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v5, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v1, :cond_1d

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    iput v5, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    goto/16 :goto_1

    :cond_1d
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    goto/16 :goto_1

    :cond_1e
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_4

    aget-object v0, p2, v6

    check-cast v0, Ljava/util/ArrayList;

    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistUnread:Z

    if-eqz v2, :cond_1f

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-nez v2, :cond_20

    :cond_1f
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_9
.end method

.method public generateObserverTag()I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/MediaController;->lastTag:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->lastTag:I

    return v0
.end method

.method public generateWaveform(Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MediaController$18;

    invoke-direct {v3, p0, v1, v0}, Lorg/telegram/messenger/MediaController$18;-><init>(Lorg/telegram/messenger/MediaController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getAudioInfo()Lorg/telegram/messenger/audioinfo/AudioInfo;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    return-object v0
.end method

.method protected getAutodownloadMask()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    :cond_2
    or-int/lit8 v0, v0, 0x2

    :cond_3
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_4

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_4

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    :cond_4
    or-int/lit8 v0, v0, 0x4

    :cond_5
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_6

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_6

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    :cond_6
    or-int/lit8 v0, v0, 0x8

    :cond_7
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_8

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_8

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9

    :cond_8
    or-int/lit8 v0, v0, 0x10

    :cond_9
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_a

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_a

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_b

    :cond_a
    or-int/lit8 v0, v0, 0x20

    :cond_b
    return v0
.end method

.method public getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getPlayingMessageObjectNum()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    return v0
.end method

.method public native getWaveform(Ljava/lang/String;)[B
.end method

.method public native getWaveform2([SI)[B
.end method

.method public isAudioPaused()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloadingCurrentMessage()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    return v0
.end method

.method public isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRecordingAudio()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShuffleMusic()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    return v0
.end method

.method public m146H()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    return-wide v0
.end method

.method public m177d(Lorg/telegram/messenger/MessageObject;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected newDownloadObjectsAvailable(I)V
    .locals 3

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    :cond_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    :cond_4
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    :cond_5
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    :cond_0
    iput v1, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    iput v1, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    return-void

    :cond_2
    if-ne p1, v2, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0

    :cond_3
    const/4 v0, -0x3

    if-ne p1, v0, :cond_4

    iput v2, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    goto :goto_0

    :cond_4
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "proximity changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    const/high16 v1, -0x3d380000    # -100.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/MediaController;->isNearToSensor(F)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    :cond_3
    :goto_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-eq v0, v1, :cond_4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eq v0, v1, :cond_4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_6

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_5

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_12

    iget v1, p0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_12

    const/high16 v1, 0x41700000    # 15.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_f

    iget v1, p0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-nez v1, :cond_f

    iget v1, p0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_5

    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-nez v1, :cond_5

    iget v1, p0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    iget v1, p0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/MediaController;->countLess:I

    :cond_5
    :goto_3
    iput v0, p0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    const/high16 v1, 0x40200000    # 2.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_16

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_16

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_16

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    :cond_6
    iget v0, p0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_19

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-eqz v0, :cond_19

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "sensor values reached"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v0, :cond_17

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_17

    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->inputFieldHasText:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->callInProgress:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    if-nez v0, :cond_8

    const-string/jumbo v0, "start record"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->playFirstUnreadVoiceMessage()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/MediaController;->startRecording(JLorg/telegram/messenger/MessageObject;)V

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_8
    :goto_5
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/MediaController;->countLess:I

    :cond_9
    :goto_6
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/MediaController;->countLess:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    goto/16 :goto_0

    :cond_a
    iget v0, p0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    goto/16 :goto_1

    :cond_b
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_d

    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const-wide v0, 0x3fef5c2900000000L    # 0.9800000190734863

    :goto_7
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v2, p0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-double v4, v4

    mul-double/2addr v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v0

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    float-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, v2, v3

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-double v4, v4

    mul-double/2addr v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v0

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    float-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, v2, v3

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    float-to-double v4, v4

    mul-double/2addr v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v6, v0

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    float-to-double v6, v6

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    double-to-float v0, v0

    aput v0, v2, v3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v1, 0x0

    const v2, 0x3f4ccccd    # 0.8f

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-float/2addr v2, v3

    const v3, 0x3e4ccccc    # 0.19999999f

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v1, 0x1

    const v2, 0x3f4ccccd    # 0.8f

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v2, v3

    const v3, 0x3e4ccccc    # 0.19999999f

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v1, 0x2

    const v2, 0x3f4ccccd    # 0.8f

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    mul-float/2addr v2, v3

    const v3, 0x3e4ccccc    # 0.19999999f

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v1, 0x1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v1, 0x2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    sub-float/2addr v2, v3

    aput v2, v0, v1

    goto/16 :goto_2

    :cond_c
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    goto/16 :goto_7

    :cond_d
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v1, 0x1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v1, 0x2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    aput v2, v0, v1

    goto/16 :goto_2

    :cond_e
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v3, 0x0

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    aput v4, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v3, 0x1

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    aput v4, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v3, 0x2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    aput v4, v2, v3

    aput v4, v0, v1

    goto/16 :goto_2

    :cond_f
    const/high16 v1, 0x41700000    # 15.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_10

    iget v1, p0, Lorg/telegram/messenger/MediaController;->countLess:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->countLess:I

    :cond_10
    iget v1, p0, Lorg/telegram/messenger/MediaController;->countLess:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_11

    iget v1, p0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_11

    iget v1, p0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-eqz v1, :cond_5

    :cond_11
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/MediaController;->countLess:I

    goto/16 :goto_3

    :cond_12
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    iget v1, p0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    iget v1, p0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_13

    const/high16 v1, -0x3e900000    # -15.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_13

    iget v1, p0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_5

    iget v1, p0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    iget v1, p0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/MediaController;->countLess:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    goto/16 :goto_3

    :cond_13
    const/high16 v1, -0x3e900000    # -15.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_14

    iget v1, p0, Lorg/telegram/messenger/MediaController;->countLess:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->countLess:I

    :cond_14
    iget v1, p0, Lorg/telegram/messenger/MediaController;->countLess:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_15

    iget v1, p0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_15

    iget v1, p0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-eqz v1, :cond_5

    :cond_15
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/MediaController;->countLess:I

    goto/16 :goto_3

    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_17
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v0, :cond_8

    const-string/jumbo v0, "start listen"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    goto/16 :goto_5

    :cond_19
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v0, :cond_9

    const-string/jumbo v0, "start listen by proximity only"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    goto/16 :goto_6

    :cond_1b
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "stop record"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_6

    :cond_1c
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "stop listen"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_6
.end method

.method public pauseAudio(Lorg/telegram/messenger/MessageObject;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-eq v2, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    :cond_3
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    goto :goto_0
.end method

.method public playAudio(Lorg/telegram/messenger/MessageObject;)Z
    .locals 12

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->resumeAudio(Lorg/telegram/messenger/MessageObject;)Z

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    :cond_4
    move v8, v7

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v0, :cond_6

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->markMessageContentAsRead(Lorg/telegram/messenger/MessageObject;)V

    :cond_6
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    if-nez v0, :cond_9

    move v0, v7

    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_7

    move v0, v8

    :cond_7
    invoke-virtual {p0, v0, v8}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    iput-boolean v8, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    move-object v0, v2

    :cond_8
    :goto_2
    if-eqz v0, :cond_a

    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_c

    if-eq v1, v0, :cond_c

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v8}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    iput-boolean v7, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    iput-boolean v8, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    iput v8, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_4
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move v8, v7

    goto/16 :goto_0

    :cond_9
    move v0, v8

    goto/16 :goto_1

    :cond_a
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    goto :goto_3

    :cond_b
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_4

    :cond_c
    iput-boolean v8, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->checkIsNextMusicFileDownloaded()V

    :cond_d
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/MediaController;->isOpusFile(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_13

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    monitor-enter v9

    const/4 v0, 0x3

    :try_start_0
    iput v0, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MediaController$13;

    invoke-direct {v4, p0, v2, v1, v0}, Lorg/telegram/messenger/MediaController$13;-><init>(Lorg/telegram/messenger/MediaController;[Ljava/lang/Boolean;Ljava/io/File;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_e

    :try_start_1
    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_e
    :try_start_2
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getTotalPcmDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/MediaController;->currentTotalPcmDuration:J

    new-instance v0, Landroid/media/AudioTrack;

    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v1, :cond_11

    move v1, v8

    :goto_5
    const v2, 0xbb80

    const/4 v3, 0x4

    const/4 v4, 0x2

    iget v5, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    new-instance v1, Lorg/telegram/messenger/MediaController$14;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$14;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    iput-boolean v8, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    iput v8, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    :cond_f
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/MediaController;->startProgressTimer(Lorg/telegram/messenger/MessageObject;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v8

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_17

    :try_start_4
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_10
    :goto_7
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_8
    move v8, v7

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x3

    goto/16 :goto_5

    :catch_0
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    :cond_12
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_13
    :try_start_6
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v0, :cond_14

    move v0, v8

    :goto_9
    invoke-virtual {v3, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lorg/telegram/messenger/MediaController$15;

    invoke-direct {v3, p0, p1}, Lorg/telegram/messenger/MediaController$15;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    :goto_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    iput-boolean v8, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput-boolean v8, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    goto/16 :goto_0

    :cond_14
    const/4 v0, 0x3

    goto :goto_9

    :cond_15
    :try_start_7
    invoke-static {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAudioInfo(Ljava/io/File;)Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_6

    :catch_2
    move-exception v0

    :try_start_8
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_6

    :cond_16
    move v0, v8

    goto :goto_a

    :catch_3
    move-exception v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput v10, v1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput v8, v1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_17
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    cmpl-float v0, v0, v11

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput v10, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    :cond_18
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$16;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$16;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    :cond_19
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_8

    :cond_1a
    move-object v0, v2

    goto/16 :goto_2
.end method

.method public playMessageAtIndex(I)V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0
.end method

.method public playNextMessage()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/MediaController;->playNextMessage(Z)V

    return-void
.end method

.method public playPreviousMessage()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget v2, v0, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_3

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-gez v0, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    :cond_4
    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_1
.end method

.method protected processDownloadObjects(ILjava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-ne p1, v7, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    move-object v2, v0

    :goto_0
    move v4, v5

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DownloadObject;

    iget-object v1, v0, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_2
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    move-object v2, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    move-object v2, v0

    goto :goto_0

    :cond_5
    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    move-object v2, v0

    goto :goto_0

    :cond_6
    const/16 v0, 0x10

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    move-object v2, v0

    goto :goto_0

    :cond_7
    const/16 v0, 0x20

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    move-object v2, v0

    goto :goto_0

    :cond_8
    iget-object v1, v0, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_2

    :cond_9
    iget-object v1, v0, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v1, :cond_a

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v8

    iget-object v1, v0, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v8, v1, v3, v5}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;Ljava/lang/String;Z)V

    move v1, v7

    :goto_4
    if-eqz v1, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    iget-object v1, v0, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_b

    iget-object v1, v0, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v8

    invoke-virtual {v8, v1, v5, v5}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    move v1, v7

    goto :goto_4

    :cond_b
    move v1, v5

    goto :goto_4

    :cond_c
    move-object v2, v3

    goto/16 :goto_0
.end method

.method public processMediaObserver(Landroid/net/Uri;)V
    .locals 14

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v7

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "date_added DESC LIMIT 1"

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_b

    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, ""

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v0, 0x4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_c

    const/4 v0, 0x5

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v0, 0x6

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "screenshot"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v12, "screenshot"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "screenshot"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "screenshot"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    :cond_4
    if-eqz v1, :cond_5

    if-nez v0, :cond_6

    :cond_5
    :try_start_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :cond_6
    if-lez v1, :cond_8

    if-lez v0, :cond_8

    iget v4, v7, Landroid/graphics/Point;->x:I

    if-ne v1, v4, :cond_7

    iget v4, v7, Landroid/graphics/Point;->y:I

    if-eq v0, v4, :cond_8

    :cond_7
    iget v4, v7, Landroid/graphics/Point;->x:I

    if-ne v0, v4, :cond_0

    iget v0, v7, Landroid/graphics/Point;->y:I

    if-ne v1, v0, :cond_0

    :cond_8
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_9
    :goto_2
    return-void

    :cond_a
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lorg/telegram/messenger/MediaController$6;

    invoke-direct {v0, p0, v3}, Lorg/telegram/messenger/MediaController$6;-><init>(Lorg/telegram/messenger/MediaController;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :cond_c
    move v0, v6

    move v1, v6

    goto/16 :goto_1
.end method

.method public removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_3

    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public resumeAudio(Lorg/telegram/messenger/MessageObject;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-eq v2, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->startProgressTimer(Lorg/telegram/messenger/MessageObject;)V

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->checkPlayerQueue()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z

    return-void
.end method

.method public scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->startVideoConvertFromQueue()Z

    goto :goto_0
.end method

.method public seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iput v1, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v1, :cond_3

    invoke-direct {p0, p2}, Lorg/telegram/messenger/MediaController;->seekOpusPlayer(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAllowStartRecord(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    return-void
.end method

.method public setInputFieldHasText(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->inputFieldHasText:Z

    return-void
.end method

.method public setLastEncryptedChatParams(JJLorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatEnterTime:J

    iput-wide p3, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatLeaveTime:J

    iput-object p5, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput-object p6, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatVisibleMessages:Ljava/util/ArrayList;

    return-void
.end method

.method public setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/messenger/MessageObject;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v0

    return v0
.end method

.method public setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/messenger/MessageObject;",
            "Z)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v0, p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-nez p3, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-static {v4, v5, v0}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMusic(JI)V

    :cond_7
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public setVoiceMessagesPlaylist(Ljava/util/ArrayList;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistUnread:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startMediaObserver()V
    .locals 4

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Lorg/telegram/messenger/MediaController$ExternalObserver;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MediaController$ExternalObserver;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v3, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Lorg/telegram/messenger/MediaController$InternalObserver;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MediaController$InternalObserver;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v3, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    aput v4, v2, v6

    aput v4, v1, v5

    aput v4, v0, v3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    aput v4, v2, v6

    aput v4, v1, v5

    aput v4, v0, v3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    aput v4, v2, v6

    aput v4, v1, v5

    aput v4, v0, v3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    iput v4, p0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    iput v3, p0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    iput v3, p0, Lorg/telegram/messenger/MediaController;->countLess:I

    iput v3, p0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$10;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$10;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    goto :goto_0
.end method

.method public startRecording(JLorg/telegram/messenger/MessageObject;)V
    .locals 7

    const-wide/16 v2, 0x32

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    :cond_0
    move v1, v0

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/MediaController$17;

    invoke-direct {v5, p0, p1, p2, p3}, Lorg/telegram/messenger/MediaController$17;-><init>(Lorg/telegram/messenger/MediaController;JLorg/telegram/messenger/MessageObject;)V

    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    const-wide/16 v0, 0x1f4

    :goto_1
    invoke-virtual {v4, v5, v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method public startRecordingIfFromSpeaker()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/MediaController;->startRecording(JLorg/telegram/messenger/MessageObject;)V

    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    goto :goto_0
.end method

.method public stopAudio()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_5

    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_2
    :try_start_3
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    :try_start_5
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :cond_6
    :try_start_6
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public stopMediaObserver()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    iget v1, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->currentObserverToken:I

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$11;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$11;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public stopRecording(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$20;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MediaController$20;-><init>(Lorg/telegram/messenger/MediaController;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toggleAutoplayGifs()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "mainconfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "autoplay_gif"

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public toggleCustomTabs()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "mainconfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "custom_tabs"

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public toggleDirectShare()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "mainconfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "direct_share"

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public toggleRepeatMode()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    iget v0, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iput v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "repeatMode"

    iget v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public toggleSaveToGallery()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "mainconfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "save_gallery"

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->checkSaveToGalleryFiles()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public toggleShuffleMusic()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "shuffleMusic"

    iget-boolean v4, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v1, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    goto :goto_1
.end method

.method public toogleRaiseToSpeak()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "mainconfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "raise_to_speak"

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
