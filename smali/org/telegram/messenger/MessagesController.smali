.class public Lorg/telegram/messenger/MessagesController;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MessagesController$PrintingUser;,
        Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;,
        Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/MessagesController; = null

.field public static IsHiddenMainS:Z = false

.field public static final UPDATE_MASK_ALL:I = 0x5ff

.field public static final UPDATE_MASK_AVATAR:I = 0x2

.field public static final UPDATE_MASK_CHANNEL:I = 0x2000

.field public static final UPDATE_MASK_CHAT_ADMINS:I = 0x4000

.field public static final UPDATE_MASK_CHAT_AVATAR:I = 0x8

.field public static final UPDATE_MASK_CHAT_MEMBERS:I = 0x20

.field public static final UPDATE_MASK_CHAT_NAME:I = 0x10

.field public static final UPDATE_MASK_NAME:I = 0x1

.field public static final UPDATE_MASK_NEW_MESSAGE:I = 0x800

.field public static final UPDATE_MASK_PHONE:I = 0x400

.field public static final UPDATE_MASK_READ_DIALOG_MESSAGE:I = 0x100

.field public static final UPDATE_MASK_SELECT_DIALOG:I = 0x200

.field public static final UPDATE_MASK_SEND_STATE:I = 0x1000

.field public static final UPDATE_MASK_STATUS:I = 0x4

.field public static final UPDATE_MASK_USER_PHONE:I = 0x80

.field public static final UPDATE_MASK_USER_PRINT:I = 0x40


# instance fields
.field public allowBigEmoji:Z

.field public blockedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public callConnectTimeout:I

.field public callPacketTimeout:I

.field public callReceiveTimeout:I

.field public callRingTimeout:I

.field public callsEnabled:Z

.field private channelViewsToReload:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private channelViewsToSend:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private channelsPts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private chats:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end field

.field private checkingLastMessagesDialogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private createdDialogIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private currentDeleteTaskRunnable:Ljava/lang/Runnable;

.field private currentDeletingTaskMids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentDeletingTaskTime:I

.field private final dialogComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogMessage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public dialogMessagesByIds:Ljava/util/HashMap;
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

.field public dialogMessagesByRandomIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsBots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsEndReached:Z

.field public dialogsFavs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsGroupsOnly:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsMegaGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsPosh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsServerOnly:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsUnread:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogsUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field public dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private disabledFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;",
            ">;"
        }
    .end annotation
.end field

.field public enableJoined:Z

.field private encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;"
        }
    .end annotation
.end field

.field private exportedChats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;",
            ">;"
        }
    .end annotation
.end field

.field public firstGettingTask:Z

.field public fontSize:I

.field private fullUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$TL_userFull;",
            ">;"
        }
    .end annotation
.end field

.field public gettingDifference:Z

.field private gettingDifferenceChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private gettingNewDeleteTask:Z

.field private gettingUnknownChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public groupBigSize:I

.field public hideJoinedGroup:Z

.field public hideLeftGroup:Z

.field private joiningToChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastPrintingStringCount:I

.field private lastStatusUpdateTime:J

.field private lastViewsCheckTime:J

.field public linkPrefix:Ljava/lang/String;

.field private loadedFullChats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadedFullParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadedFullUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public loadingBlockedUsers:Z

.field public loadingDialogs:Z

.field private loadingFullChats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadingFullParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadingFullUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadingPeerSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public maxBroadcastCount:I

.field public maxEditTime:I

.field public maxGroupCount:I

.field public maxMegagroupCount:I

.field public maxPinnedDialogsCount:I

.field public maxRecentGifsCount:I

.field public maxRecentStickersCount:I

.field private migratingDialogs:Z

.field public minGroupConvertSize:I

.field private needShortPollChannels:Landroid/util/SparseIntArray;

.field public nextDialogsCacheOffset:I

.field private offlineSent:Z

.field public onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public printingStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public printingStringsTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public printingUsers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessagesController$PrintingUser;",
            ">;>;"
        }
    .end annotation
.end field

.field public ratingDecay:I

.field public registeringForPush:Z

.field private reloadingMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private reloadingWebpages:Ljava/util/HashMap;
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

.field private reloadingWebpagesPending:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;"
        }
    .end annotation
.end field

.field public secretWebpagePreview:I

.field public sendingTypings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public serverDialogsEndReached:Z

.field private shortPollChannels:Landroid/util/SparseIntArray;

.field private statusRequest:I

.field private statusSettingState:I

.field private final updatesComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Update;",
            ">;"
        }
    .end annotation
.end field

.field private updatesQueueChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            ">;>;"
        }
    .end annotation
.end field

.field private updatesQueuePts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            ">;"
        }
    .end annotation
.end field

.field private updatesQueueQts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            ">;"
        }
    .end annotation
.end field

.field private updatesQueueSeq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Updates;",
            ">;"
        }
    .end annotation
.end field

.field private updatesStartWaitTimeChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private updatesStartWaitTimePts:J

.field private updatesStartWaitTimeQts:J

.field private updatesStartWaitTimeSeq:J

.field public updatingState:Z

.field private uploadingAvatar:Ljava/lang/String;

.field public useSystemEmoji:Z

.field private users:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/MessagesController;->IsHiddenMainS:Z

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/MessagesController;->Instance:Lorg/telegram/messenger/MessagesController;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v6, 0xc8

    const/16 v5, 0x64

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v5, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0xa

    invoke-direct {v0, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v5, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v5, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->exportedChats:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsAll:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsPosh:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsUnread:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v5, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v5, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v5, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x14

    invoke-direct {v0, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingStringsTypes:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x14

    invoke-direct {v0, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->needShortPollChannels:Landroid/util/SparseIntArray;

    iput-boolean v1, p0, Lorg/telegram/messenger/MessagesController;->loadingBlockedUsers:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToReload:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->gettingUnknownChannels:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->checkingLastMessagesDialogs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueQts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->fullUsers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullParticipants:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpagesPending:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    iput v4, p0, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->enableJoined:Z

    const-string/jumbo v0, "t.me"

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->fontSize:I

    iput v6, p0, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    iput v5, p0, Lorg/telegram/messenger/MessagesController;->maxBroadcastCount:I

    const/16 v0, 0x1388

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    iput v6, p0, Lorg/telegram/messenger/MessagesController;->minGroupConvertSize:I

    const v0, 0x2a300

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->maxEditTime:I

    const/16 v0, 0x1e

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->maxRecentStickersCount:I

    iput v6, p0, Lorg/telegram/messenger/MessagesController;->maxRecentGifsCount:I

    const/16 v0, 0x4e20

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->callReceiveTimeout:I

    const v0, 0x15f90

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I

    const/16 v0, 0x7530

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->callConnectTimeout:I

    const/16 v0, 0x2710

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->callPacketTimeout:I

    const/4 v0, 0x5

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->maxPinnedDialogsCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/messenger/MessagesController$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$1;-><init>(Lorg/telegram/messenger/MessagesController;)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogComparator:Ljava/util/Comparator;

    new-instance v0, Lorg/telegram/messenger/MessagesController$2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$2;-><init>(Lorg/telegram/messenger/MessagesController;)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesComparator:Ljava/util/Comparator;

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->addSupportUser()V

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "Notifications"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "EnableContactJoined"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->enableJoined:Z

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "mainconfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v0, "secretWebpage2"

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    const-string/jumbo v0, "maxGroupCount"

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    const-string/jumbo v0, "maxMegagroupCount"

    const/16 v3, 0x3e8

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    const-string/jumbo v0, "maxRecentGifsCount"

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->maxRecentGifsCount:I

    const-string/jumbo v0, "maxRecentStickersCount"

    const/16 v3, 0x1e

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->maxRecentStickersCount:I

    const-string/jumbo v0, "maxEditTime"

    const/16 v3, 0xe10

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->maxEditTime:I

    const-string/jumbo v0, "groupBigSize"

    const/16 v3, 0xa

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->groupBigSize:I

    const-string/jumbo v0, "ratingDecay"

    const v3, 0x24ea00

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->ratingDecay:I

    const-string/jumbo v3, "fons_size"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    :goto_0
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->fontSize:I

    const-string/jumbo v0, "allowBigEmoji"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->allowBigEmoji:Z

    const-string/jumbo v0, "useSystemEmoji"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->useSystemEmoji:Z

    const-string/jumbo v0, "callsEnabled"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->callsEnabled:Z

    const-string/jumbo v0, "linkPrefix"

    const-string/jumbo v3, "t.me"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    const-string/jumbo v0, "callReceiveTimeout"

    const/16 v3, 0x4e20

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->callReceiveTimeout:I

    const-string/jumbo v0, "callRingTimeout"

    const v3, 0x15f90

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I

    const-string/jumbo v0, "callConnectTimeout"

    const/16 v3, 0x7530

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->callConnectTimeout:I

    const-string/jumbo v0, "callPacketTimeout"

    const/16 v3, 0x2710

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->callPacketTimeout:I

    const-string/jumbo v0, "maxPinnedDialogsCount"

    const/4 v3, 0x5

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->maxPinnedDialogsCount:I

    const-string/jumbo v0, "disabledFeatures"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v2, v0}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v3

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v1

    const/4 v4, 0x0

    invoke-static {v2, v1, v4}, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->feature:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->description:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x10

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public static SuperNotificatin(Ljava/lang/String;I)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v2, v0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "SpecialNotifications"

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v4, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "com.tmessages.openchat"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const v4, 0x7fffffff

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/support/v7/app/NotificationCompat$Builder;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/support/v7/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0200f4

    invoke-virtual {v1, v4}, Landroid/support/v7/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const-string/jumbo v4, "AppName"

    const v5, 0x7f080086

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v4, v2, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/NotificationCompat$Builder;

    const-string/jumbo v1, "vibrate_sc"

    invoke-interface {v3, v1, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v8, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    new-array v1, v6, [J

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_1
    :goto_0
    const-string/jumbo v1, "color_sc"

    const v4, -0xff0100

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v4, 0x3e8

    const/16 v5, 0x3e8

    invoke-virtual {v0, v1, v4, v5}, Landroid/support/v7/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v1, 0x0

    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string/jumbo v4, "sound_path_sc"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/support/v7/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_3
    if-ne v1, v6, :cond_4

    new-array v1, v10, [J

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    if-ne v1, v10, :cond_6

    :cond_5
    invoke-virtual {v0, v6}, Landroid/support/v7/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    :cond_6
    if-ne v1, v9, :cond_1

    new-array v1, v6, [J

    fill-array-data v1, :array_2

    invoke-virtual {v0, v1}, Landroid/support/v7/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x64
        0x0
        0x64
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x3e8
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Update;)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Update;)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdateChannelId(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->needShortPollChannels:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->applyDialogNotificationsSettings(JLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->exportedChats:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/MessagesController;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->checkChannelError(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->fullUsers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2902(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/messenger/MessagesController;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->gettingNewDeleteTask:Z

    return v0
.end method

.method static synthetic access$3002(Lorg/telegram/messenger/MessagesController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController;->gettingNewDeleteTask:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/MessagesController;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    return v0
.end method

.method static synthetic access$3102(Lorg/telegram/messenger/MessagesController;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/messenger/MessagesController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3202(Lorg/telegram/messenger/MessagesController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$3300(Lorg/telegram/messenger/MessagesController;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->checkDeletingTask(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lorg/telegram/messenger/MessagesController;JZII)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JZII)V

    return-void
.end method

.method static synthetic access$3500(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullParticipants:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/messenger/MessagesController;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$3702(Lorg/telegram/messenger/MessagesController;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$3802(Lorg/telegram/messenger/MessagesController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController;->offlineSent:Z

    return p1
.end method

.method static synthetic access$3902(Lorg/telegram/messenger/MessagesController;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4002(Lorg/telegram/messenger/MessagesController;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    return p1
.end method

.method static synthetic access$4100(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpagesPending:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/messenger/MessagesController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->reloadMessages(Ljava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic access$4502(Lorg/telegram/messenger/MessagesController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/MessagesController;->migratingDialogs:Z

    return p1
.end method

.method static synthetic access$4600(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->applyDialogsNotificationsSettings(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$4700(Lorg/telegram/messenger/MessagesController;IIIIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/MessagesController;->migrateDialogs(IIIIIJ)V

    return-void
.end method

.method static synthetic access$4800(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->reloadDialogsReadValue(Ljava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic access$4900(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->checkingLastMessagesDialogs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueQts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/messenger/MessagesController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->processUpdatesQueue(II)V

    return-void
.end method

.method static synthetic access$5300(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Updates;)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdateSeq(Lorg/telegram/tgnet/TLRPC$Updates;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lorg/telegram/messenger/MessagesController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->processChannelsUpdatesQueue(II)V

    return-void
.end method

.method static synthetic access$5500(Lorg/telegram/messenger/MessagesController;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->gettingUnknownChannels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/MessagesController;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    return-wide p1
.end method

.method static synthetic access$802(Lorg/telegram/messenger/MessagesController;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    return-wide p1
.end method

.method static synthetic access$902(Lorg/telegram/messenger/MessagesController;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    return-wide p1
.end method

.method private applyDialogNotificationsSettings(JLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V
    .locals 15

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyuntil_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-eqz v2, :cond_0

    move-object/from16 v0, p3

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "silent_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p1

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p3

    iget-boolean v9, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->silent:Z

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p3

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v9

    if-le v8, v9, :cond_5

    move-object/from16 v0, p3

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v9

    const v10, 0x1e13380

    add-int/2addr v9, v10

    if-le v8, v9, :cond_2

    if-eq v5, v11, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v5, 0x7fffffff

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    move v2, v3

    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    int-to-long v8, v2

    const/16 v2, 0x20

    shl-long/2addr v8, v2

    const-wide/16 v10, 0x1

    or-long/2addr v8, v10

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    :goto_1
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz v4, :cond_1

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    if-ne v5, v12, :cond_3

    move-object/from16 v0, p3

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    if-eq v6, v5, :cond_8

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyuntil_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-interface {v7, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    :cond_4
    move v2, v4

    :goto_2
    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    move v13, v4

    move v4, v2

    move v2, v13

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_7

    if-eq v5, v4, :cond_7

    if-eqz v2, :cond_6

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notify2_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_3
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const-wide/16 v8, 0x0

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto :goto_3

    :cond_8
    move v2, v3

    goto :goto_2

    :cond_9
    move v2, v3

    goto/16 :goto_0

    :cond_a
    move v2, v3

    move v4, v3

    goto/16 :goto_0
.end method

.method private applyDialogsNotificationsSettings(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v3, v4

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "Notifications"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    :cond_0
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "silent_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->silent:Z

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    if-eqz v5, :cond_5

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v6

    const v7, 0x1e13380

    add-int/2addr v6, v7

    if-le v5, v6, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v2, 0x7fffffff

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    :cond_1
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_2
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v2, :cond_3

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v2, v2

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v2, v2

    goto :goto_1

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notify2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyuntil_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notify2_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    return-void
.end method

.method public static checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v3, "user_id"

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "chat_id"

    invoke-virtual {p0, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v3, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    move-object v4, v3

    move-object v3, v2

    :goto_1
    if-nez v4, :cond_2

    if-eqz v3, :cond_0

    :cond_2
    if-eqz v3, :cond_5

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$Chat;->restriction_reason:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_2
    if-eqz v2, :cond_0

    invoke-static {p1, v2}, Lorg/telegram/messenger/MessagesController;->showCantOpenAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_6

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    move-object v4, v2

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_3

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    move-object v3, v2

    move-object v4, v2

    goto :goto_1
.end method

.method private checkChannelError(Ljava/lang/String;I)V
    .locals 7

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v4, "CHANNEL_PRIVATE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "CHANNEL_PUBLIC_GROUP_NA"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "USER_BANNED_IN_CHANNEL"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatInfoCantLoad:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v4, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatInfoCantLoad:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v4, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatInfoCantLoad:I

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x6bd947ea -> :sswitch_2
        -0x2f6631f9 -> :sswitch_0
        -0x1c1436b3 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkDeletingTask(Z)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    if-nez p1, :cond_0

    iget v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    if-gt v2, v1, :cond_2

    :cond_0
    iput v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    new-instance v0, Lorg/telegram/messenger/MessagesController$21;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$21;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private deleteDialog(JZII)V
    .locals 11

    long-to-int v6, p1

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v7, v0

    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4}, Lorg/telegram/messenger/MessagesStorage;->deleteDialog(JI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p4, :cond_2

    const/4 v0, 0x3

    if-ne p4, v0, :cond_3

    :cond_2
    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->uninstallShortcut(J)V

    :cond_3
    if-eqz p3, :cond_9

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4}, Lorg/telegram/messenger/MessagesStorage;->deleteDialog(JI)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-eqz v0, :cond_8

    if-nez p5, :cond_4

    const/4 v1, 0x0

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p5

    :cond_4
    if-eqz p4, :cond_5

    const/4 v1, 0x3

    if-ne p4, v1, :cond_a

    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesController$36;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$36;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogsAll:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogsPosh:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogsUnread:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-eqz v1, :cond_7

    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const/4 v1, 0x1

    if-ne p4, v1, :cond_e

    if-eqz v6, :cond_e

    if-lez v2, :cond_e

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    const/4 v1, 0x0

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageService;->out:Z

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    iget v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;-><init>()V

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    if-lez v6, :cond_c

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    :goto_3
    new-instance v0, Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2, v3}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    :cond_8
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->removeAllMessagesFromDialog:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/MessagesController$37;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$37;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_9
    move/from16 v5, p5

    const/4 v0, 0x1

    if-eq v7, v0, :cond_0

    const/4 v0, 0x3

    if-eq p4, v0, :cond_0

    if-eqz v6, :cond_11

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-nez v1, :cond_0

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;-><init>()V

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-nez p4, :cond_f

    const v0, 0x7fffffff

    :goto_5
    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->max_id:I

    if-eqz p4, :cond_10

    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteHistory;->just_clear:Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v0, Lorg/telegram/messenger/MessagesController$38;

    move-object v1, p0

    move-wide v2, p1

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController$38;-><init>(Lorg/telegram/messenger/MessagesController;JII)V

    const/16 v1, 0x40

    invoke-virtual {v7, v6, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    goto/16 :goto_1

    :cond_b
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    goto/16 :goto_2

    :cond_c
    neg-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    neg-int v1, v6

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    goto/16 :goto_3

    :cond_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    neg-int v1, v6

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    goto/16 :goto_3

    :cond_e
    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    goto/16 :goto_4

    :cond_f
    move v0, v5

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    goto :goto_6

    :cond_11
    const/4 v0, 0x1

    if-ne p4, v0, :cond_12

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/SecretChatHelper;->sendClearHistoryMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_0

    :cond_12
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(I)V

    goto/16 :goto_0
.end method

.method private getChannelDifference(I)V
    .locals 7

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(IIJLorg/telegram/tgnet/TLRPC$InputChannel;)V

    return-void
.end method

.method public static getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    return-object v0
.end method

.method public static getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;
    .locals 4

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChannel;-><init>()V

    iget v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:I

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputChannel;->access_hash:J

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;-><init>()V

    goto :goto_0
.end method

.method public static getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;
    .locals 4

    if-gez p0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-int v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    neg-int v2, p0

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    neg-int v1, p0

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    iput p0, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    goto :goto_0
.end method

.method public static getInputUser(I)Lorg/telegram/tgnet/TLRPC$InputUser;
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    return-object v0
.end method

.method public static getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputUser;-><init>()V

    iget v1, p0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:I

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputUser;->access_hash:J

    goto :goto_0
.end method

.method public static getInstance()Lorg/telegram/messenger/MessagesController;
    .locals 2

    sget-object v0, Lorg/telegram/messenger/MessagesController;->Instance:Lorg/telegram/messenger/MessagesController;

    if-nez v0, :cond_1

    const-class v1, Lorg/telegram/messenger/MessagesController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/MessagesController;->Instance:Lorg/telegram/messenger/MessagesController;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/MessagesController;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesController;-><init>()V

    sput-object v0, Lorg/telegram/messenger/MessagesController;->Instance:Lorg/telegram/messenger/MessagesController;

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

.method public static getPeer(I)Lorg/telegram/tgnet/TLRPC$Peer;
    .locals 2

    if-gez p0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-int v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-nez v1, :cond_0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    neg-int v1, p0

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    neg-int v1, p0

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput p0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    goto :goto_0
.end method

.method private static getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, ": "

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "-all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "-android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getUpdateChannelId(Lorg/telegram/tgnet/TLRPC$Update;)I
    .locals 1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    goto :goto_0

    :cond_1
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    goto :goto_0
.end method

.method private getUpdateSeq(Lorg/telegram/tgnet/TLRPC$Updates;)I
    .locals 1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->seq_start:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    goto :goto_0
.end method

.method private getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I
    .locals 1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteChannelMessages;

    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateChannelWebPage;

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 4

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->feature:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "Oops!"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v2, "OK"

    const v3, 0x7f0803c8

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->description:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private isNotifySettingsMuted(Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;)Z
    .locals 2

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidUpdate(Lorg/telegram/tgnet/TLRPC$Updates;I)I
    .locals 5

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_3

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdateSeq(Lorg/telegram/tgnet/TLRPC$Updates;)I

    move-result v3

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    add-int/lit8 v4, v4, 0x1

    if-eq v4, v3, :cond_0

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    if-ne v4, v3, :cond_2

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    if-lt v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_3
    if-ne p2, v0, :cond_5

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    if-gt v3, v4, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    add-int/2addr v1, v3

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-ne v1, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_5
    if-ne p2, v1, :cond_7

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    if-gt v3, v4, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-ne v1, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method private migrateDialogs(IIIIIJ)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->migratingDialogs:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->migratingDialogs:Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;-><init>()V

    const/16 v1, 0x64

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->limit:I

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_id:I

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_date:I

    if-nez p1, :cond_2

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$56;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$56;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput p5, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    :goto_2
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-wide p6, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput p3, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    goto :goto_2

    :cond_4
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput p4, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    goto :goto_2
.end method

.method public static openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V
    .locals 5

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, v3}, Lorg/telegram/messenger/MessagesController;->openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v1, "Loading"

    const v2, 0x7f0802df

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    iput-object p0, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$114;

    invoke-direct {v3, v0, p1, p2}, Lorg/telegram/messenger/MessagesController$114;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v1

    const/4 v2, -0x2

    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0800f2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$115;

    invoke-direct {v4, v1, p1}, Lorg/telegram/messenger/MessagesController$115;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setVisibleDialog(Landroid/app/Dialog;)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V
    .locals 3

    const/4 v1, 0x1

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->restriction_reason:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    invoke-static {p2, v0}, Lorg/telegram/messenger/MessagesController;->showCantOpenAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz p0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_3

    move p4, v1

    move p3, v1

    goto :goto_1

    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_6

    const-string/jumbo v1, "chat_id"

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_2
    if-nez p3, :cond_7

    new-instance v1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "user_id"

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v1, p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_0
.end method

.method private processChannelsUpdatesQueue(II)V
    .locals 9

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v2, Lorg/telegram/messenger/MessagesController$88;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$88;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-ne p2, v7, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Updates;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move v3, v4

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Updates;

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gt v6, v8, :cond_5

    move v6, v7

    :goto_2
    if-nez v6, :cond_7

    invoke-virtual {p0, v2, v5}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v2, v5

    :goto_3
    move v3, v2

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v8, v2, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    add-int/2addr v6, v8

    iget v8, v2, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-ne v6, v8, :cond_6

    move v6, v4

    goto :goto_2

    :cond_6
    move v6, v5

    goto :goto_2

    :cond_7
    if-ne v6, v5, :cond_a

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_9

    if-nez v3, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v4, 0x5dc

    cmp-long v0, v0, v4

    if-gtz v0, :cond_9

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HOLE IN CHANNEL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " UPDATES QUEUE - will wait more time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HOLE IN CHANNEL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " UPDATES QUEUE - getChannelDifference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v2, v3

    goto/16 :goto_3

    :cond_b
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UPDATES CHANNEL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " QUEUE PROCEED - OK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private processUpdatesQueue(II)V
    .locals 10

    const/4 v5, 0x2

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/MessagesController$89;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$89;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    if-ne p2, v5, :cond_0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Updates;

    if-nez p1, :cond_3

    invoke-direct {p0, v0}, Lorg/telegram/messenger/MessagesController;->getUpdateSeq(Lorg/telegram/tgnet/TLRPC$Updates;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    :cond_0
    :goto_1
    move v1, v2

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/MessagesController;->isValidUpdate(Lorg/telegram/tgnet/TLRPC$Updates;I)I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0, v0, v3}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v3

    :goto_3
    move v1, v0

    goto :goto_2

    :cond_1
    if-ne p1, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/MessagesController$90;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$90;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v4, v0

    goto :goto_0

    :cond_2
    if-ne p1, v5, :cond_c

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueQts:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/MessagesController$91;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$91;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v4, v0

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_4

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    goto :goto_1

    :cond_4
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    goto :goto_1

    :cond_5
    if-ne v5, v3, :cond_9

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdatesStartTime(I)J

    move-result-wide v2

    cmp-long v0, v2, v8

    if-eqz v0, :cond_8

    if-nez v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUpdatesStartTime(I)J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v6, 0x5dc

    cmp-long v0, v2, v6

    if-gtz v0, :cond_8

    :cond_6
    const-string/jumbo v0, "HOLE IN UPDATES QUEUE - will wait more time"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    if-eqz v1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->setUpdatesStartTime(IJ)V

    :cond_7
    :goto_4
    return-void

    :cond_8
    const-string/jumbo v0, "HOLE IN UPDATES QUEUE - getDifference"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-direct {p0, p1, v8, v9}, Lorg/telegram/messenger/MessagesController;->setUpdatesStartTime(IJ)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    goto :goto_4

    :cond_9
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    goto :goto_3

    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v0, "UPDATES QUEUE PROCEED - OK"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_b
    invoke-direct {p0, p1, v8, v9}, Lorg/telegram/messenger/MessagesController;->setUpdatesStartTime(IJ)V

    goto :goto_4

    :cond_c
    move-object v4, v0

    goto/16 :goto_0
.end method

.method private reloadDialogsReadValue(Ljava/util/ArrayList;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;J)V"
        }
    .end annotation

    const-wide/16 v6, 0x0

    cmp-long v0, p2, v6

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;-><init>()V

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v0, v4

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v3, :cond_2

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;->peers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    long-to-int v0, p2

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v1, :cond_4

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    :cond_4
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;->peers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;->peers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/MessagesController$9;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$9;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method private reloadMessages(Ljava/util/ArrayList;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, p3}, Lorg/telegram/messenger/ChatObject;->getChatByDialog(J)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;-><init>()V

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    move-object v6, v0

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;-><init>()V

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;->id:Ljava/util/ArrayList;

    move-object v6, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v0, Lorg/telegram/messenger/MessagesController$12;

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController$12;-><init>(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$Chat;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v6, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method private setUpdatesStartTime(IJ)V
    .locals 2

    if-nez p1, :cond_1

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    goto :goto_0
.end method

.method private static showCantOpenAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "AppName"

    const v2, 0x7f080086

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "OK"

    const v2, 0x7f0803c8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method private toggleMute(ZLjava/lang/Long;)V
    .locals 6

    const/4 v4, 0x0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "Notifications"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notify2_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-wide/16 v2, 0x1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v1, 0x7fffffff

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(J)V

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "Notifications"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notify2_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-eqz v0, :cond_3

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(J)V

    goto :goto_0
.end method

.method private toggleMute2(ZJ)V
    .locals 4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v0

    const-string/jumbo v1, "Pushe"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Pushe"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "Notifications"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notify2_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-wide/16 v2, 0x1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v1, 0x7fffffff

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    :cond_0
    invoke-static {p2, p3}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(J)V

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    :cond_1
    return-void
.end method

.method private toggleMute3(ZJ)V
    .locals 4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v0

    const-string/jumbo v1, "Pushe"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Pushe"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "Notifications"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notify2_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-wide/16 v2, 0x1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v1, 0x7fffffff

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    :cond_0
    invoke-static {p2, p3}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(J)V

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    :cond_1
    return-void
.end method

.method private updatePrintingStrings()V
    .locals 15

    const v14, 0x7f0802a0

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v4, 0x0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    long-to-int v1, v8

    if-gtz v1, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v12, :cond_11

    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessagesController$PrintingUser;

    iget v2, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    return-void

    :cond_2
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordAudioAction;

    if-eqz v3, :cond_4

    if-gez v1, :cond_3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "IsRecordingAudio"

    const v3, 0x7f08029a

    new-array v10, v12, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v4

    invoke-static {v1, v3, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "RecordingAudio"

    const v2, 0x7f08046b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadAudioAction;

    if-eqz v3, :cond_6

    if-gez v1, :cond_5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "IsSendingAudio"

    const v3, 0x7f08029b

    new-array v10, v12, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v4

    invoke-static {v1, v3, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "SendingAudio"

    const v2, 0x7f0804d6

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction;

    if-nez v3, :cond_7

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordVideoAction;

    if-eqz v3, :cond_9

    :cond_7
    if-gez v1, :cond_8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "IsSendingVideo"

    const v3, 0x7f08029f

    new-array v10, v12, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v4

    invoke-static {v1, v3, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "SendingVideoStatus"

    const v2, 0x7f0804dc

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;

    if-eqz v3, :cond_b

    if-gez v1, :cond_a

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "IsSendingFile"

    const v3, 0x7f08029c

    new-array v10, v12, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v4

    invoke-static {v1, v3, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "SendingFile"

    const v2, 0x7f0804d7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_b
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction;

    if-eqz v3, :cond_d

    if-gez v1, :cond_c

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "IsSendingPhoto"

    const v3, 0x7f08029e

    new-array v10, v12, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v4

    invoke-static {v1, v3, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_c
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "SendingPhoto"

    const v2, 0x7f0804da

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_d
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGamePlayAction;

    if-eqz v0, :cond_f

    if-gez v1, :cond_e

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "IsSendingGame"

    const v3, 0x7f08029d

    new-array v10, v12, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v4

    invoke-static {v1, v3, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_e
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "SendingGame"

    const v2, 0x7f0804d8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_f
    if-gez v1, :cond_10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "%s %s"

    new-array v3, v13, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const-string/jumbo v2, "IsTyping"

    invoke-static {v2, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v12

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_10
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "Typing"

    const v2, 0x7f080540

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_11
    const-string/jumbo v2, ""

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v3, v4

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessagesController$PrintingUser;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    if-eqz v11, :cond_17

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v11}, Lorg/telegram/messenger/MessagesController;->getUserNameForTyping(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v3, 0x1

    :goto_b
    if-ne v1, v13, :cond_12

    :goto_c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    if-ne v1, v12, :cond_13

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "%s %s"

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v2, v3, v4

    const-string/jumbo v2, "IsTyping"

    invoke-static {v2, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v12

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_12
    move v3, v1

    goto :goto_9

    :cond_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v13, :cond_14

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v3, "%s %s"

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v2, v10, v4

    const-string/jumbo v2, "AndMoreTyping"

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v12

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_14
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "%s %s"

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v2, v3, v4

    const-string/jumbo v2, "AreTyping"

    const v10, 0x7f080095

    invoke-static {v2, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v12

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_15
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->lastPrintingStringCount:I

    new-instance v0, Lorg/telegram/messenger/MessagesController$49;

    invoke-direct {v0, p0, v5, v6}, Lorg/telegram/messenger/MessagesController$49;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_16
    move-object v1, v2

    goto/16 :goto_a

    :cond_17
    move v1, v3

    goto/16 :goto_b

    :cond_18
    move v1, v3

    goto/16 :goto_c
.end method

.method private updatePrintingUsersWithNewMessages(JLjava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)Z"
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    cmp-long v0, p1, v6

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return v5

    :cond_1
    cmp-long v0, p1, v6

    if-gez v0, :cond_7

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    move v2, v3

    move v4, v3

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessagesController$PrintingUser;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move v1, v2

    move v2, v5

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v4, v2

    move v2, v1

    goto :goto_2

    :cond_5
    move v4, v3

    :cond_6
    if-nez v4, :cond_0

    :cond_7
    move v5, v3

    goto :goto_0

    :cond_8
    move v1, v2

    move v2, v4

    goto :goto_3
.end method


# virtual methods
.method public addSupportUser()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;-><init>()V

    const-string/jumbo v1, "333"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->phone:Ljava/lang/String;

    const v1, 0x514c8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->id:I

    const-string/jumbo v1, "Telegram"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->first_name:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->last_name:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    invoke-virtual {p0, v0, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;-><init>()V

    const-string/jumbo v1, "42777"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->phone:Ljava/lang/String;

    const v1, 0xbdb28

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->id:I

    const-string/jumbo v1, "Telegram"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->first_name:Ljava/lang/String;

    const-string/jumbo v1, "Notifications"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->last_name:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    invoke-virtual {p0, v0, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    return-void
.end method

.method public addToViewsQueue(Lorg/telegram/tgnet/TLRPC$Message;Z)V
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v0, v0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v3, :cond_0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v4, v3

    const/16 v3, 0x20

    shl-long/2addr v4, v3

    or-long/2addr v0, v4

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesStorage;->markMessagesContentAsRead(Ljava/util/ArrayList;)V

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$61;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesController$61;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addUserToChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p1, :cond_9

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_3

    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v3

    if-eqz p5, :cond_2

    if-eqz v2, :cond_7

    if-nez v7, :cond_7

    :cond_2
    if-eqz v2, :cond_6

    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v0, Lorg/telegram/messenger/MessagesController$79;

    move-object v1, p0

    move v4, p1

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController$79;-><init>(Lorg/telegram/messenger/MessagesController;ZLorg/telegram/tgnet/TLRPC$InputUser;ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-virtual {v8, v6, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :cond_3
    move v7, v1

    goto :goto_1

    :cond_4
    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_5

    if-nez v7, :cond_5

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEditor;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEditor;-><init>()V

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->role:Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;

    goto :goto_2

    :cond_5
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;-><init>()V

    iput p1, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;->chat_id:I

    iput p4, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;->fwd_limit:I

    iput-object v3, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    goto :goto_2

    :cond_7
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;-><init>()V

    iput-object v3, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    if-eqz v2, :cond_8

    neg-int v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :goto_3
    iput-object p5, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->start_param:Ljava/lang/String;

    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    iput-wide v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->random_id:J

    goto :goto_2

    :cond_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    goto :goto_3

    :cond_9
    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v0, :cond_0

    move v2, v1

    :goto_4
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-eq v0, v3, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v6, v2, v7, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->inviter_id:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->date:I

    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p3, v7}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v6, v3, v4

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v7, [Ljava/lang/Object;

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public addUsersToChannel(ILjava/util/ArrayList;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputUser;",
            ">;",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;->users:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$71;

    invoke-direct {v2, p0, p3, v0}, Lorg/telegram/messenger/MessagesController$71;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public blockUser(I)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v1, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/query/SearchQuery;->removeInline(I)V

    :goto_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_block;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_block;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_block;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$25;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/MessagesController$25;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/query/SearchQuery;->removePeer(I)V

    goto :goto_1
.end method

.method public canPinDialog(Z)Z
    .locals 6

    const/4 v2, 0x0

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v4, v4

    if-eqz p1, :cond_0

    if-nez v4, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-nez v4, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v0, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/telegram/messenger/MessagesController;->maxPinnedDialogsCount:I

    if-ge v3, v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public cancelLoadFullChat(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelLoadFullUser(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelTyping(IJ)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public changeChatAvatar(ILorg/telegram/tgnet/TLRPC$InputFile;)V
    .locals 4

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz p2, :cond_0

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    iput-object p2, v1, Lorg/telegram/tgnet/TLRPC$InputChatPhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    :goto_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$82;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$82;-><init>(Lorg/telegram/messenger/MessagesController;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhotoEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhotoEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;-><init>()V

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;->chat_id:I

    if-eqz p2, :cond_2

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    iput-object p2, v1, Lorg/telegram/tgnet/TLRPC$InputChatPhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhotoEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhotoEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    goto :goto_0
.end method

.method public changeChatTitle(ILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-lez p1, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editTitle;->title:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$81;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$81;-><init>(Lorg/telegram/messenger/MessagesController;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;-><init>()V

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;->chat_id:I

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatTitle;->title:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v2, v3, [Ljava/lang/Object;

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public checkChannelInviter(I)V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/MessagesController$100;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MessagesController$100;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected checkLastDialogMessage(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$InputPeer;J)V
    .locals 9

    const/4 v2, 0x1

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v6, v0

    if-eqz v6, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->checkingLastMessagesDialogs:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;-><init>()V

    if-nez p2, :cond_2

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    :goto_1
    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v0, :cond_0

    iput v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->limit:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->checkingLastMessagesDialogs:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_3

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p2}, Lorg/telegram/tgnet/TLRPC$InputPeer;->getObjectSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    invoke-direct {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x5

    :try_start_1
    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBool(Z)V

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    invoke-virtual {p2, v0}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v4

    :goto_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/MessagesController$59;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController$59;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_dialog;JI)V

    invoke-virtual {v0, v7, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_2
    move-object v0, p2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_4
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    move-wide v4, p3

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_4
.end method

.method public cleanup()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->cleanup()V

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/CContactsController;->cleanup()V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->cleanup()V

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/NotificationsController;->cleanup()V

    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper;->cleanup()V

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SecretChatHelper;->cleanup()V

    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->cleanup()V

    invoke-static {}, Lorg/telegram/messenger/query/SearchQuery;->cleanup()V

    invoke-static {}, Lorg/telegram/messenger/query/DraftQuery;->cleanup()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpagesPending:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->exportedChats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->fullUsers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->joiningToChannels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToReload:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsPosh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogsUnread:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingStringsTypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput v2, p0, Lorg/telegram/messenger/MessagesController;->lastPrintingStringCount:I

    iput v2, p0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$5;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$5;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->reloadingMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v2, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskTime:I

    iput-object v3, p0, Lorg/telegram/messenger/MessagesController;->currentDeletingTaskMids:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->gettingNewDeleteTask:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->serverDialogsEndReached:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->loadingBlockedUsers:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->firstGettingTask:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->updatingState:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->offlineSent:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->registeringForPush:Z

    iput-object v3, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    iput v2, p0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    iput v2, p0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$6;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$6;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lorg/telegram/messenger/MessagesController;->currentDeleteTaskRunnable:Ljava/lang/Runnable;

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->addSupportUser()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method protected clearFullUsers()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public convertGroup()V
    .locals 0

    return-void
.end method

.method public convertToMegaGroup(Landroid/content/Context;I)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_migrateChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_migrateChat;-><init>()V

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_migrateChat;->chat_id:I

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v2, "Loading"

    const v3, 0x7f0802df

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$69;

    invoke-direct {v3, p0, p1, v1}, Lorg/telegram/messenger/MessagesController$69;-><init>(Lorg/telegram/messenger/MessagesController;Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    const/4 v2, -0x2

    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0800f2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$70;

    invoke-direct {v4, p0, v0}, Lorg/telegram/messenger/MessagesController$70;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :try_start_0
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public createChat(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_chat;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_chat;-><init>()V

    sget v0, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    iput-object p1, v6, Lorg/telegram/tgnet/TLRPC$TL_chat;->title:Ljava/lang/String;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatPhotoEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatPhotoEmpty;-><init>()V

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_chat;->participants_count:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_chat;->date:I

    const/4 v0, 0x1

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_chat;->version:I

    sget v0, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    const/4 v0, 0x0

    invoke-virtual {p0, v6, v0}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_chatFull;-><init>()V

    iget v0, v6, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->id:I

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;-><init>()V

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty;-><init>()V

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteEmpty;-><init>()V

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;-><init>()V

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget v1, v6, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->chat_id:I

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->admin_id:I

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    const/4 v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->version:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v0

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->inviter_id:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    long-to-int v0, v4

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->date:I

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    iget v0, v6, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->makeBroadcastId(I)J

    move-result-wide v0

    iput-wide v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v6, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->random_id:J

    iget v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    new-instance v0, Lorg/telegram/messenger/MessageObject;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v7, v1, v2}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v2, 0x0

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    iget-wide v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-virtual {p0, v0, v1, v8}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v6, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    if-nez p4, :cond_4

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;-><init>()V

    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;->title:Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;->users:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/MessagesController$67;

    invoke-direct {v1, p0, p5, v2}, Lorg/telegram/messenger/MessagesController$67;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    if-eq p4, v0, :cond_5

    const/4 v0, 0x4

    if-ne p4, v0, :cond_7

    :cond_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->title:Ljava/lang/String;

    iput-object p3, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->about:Ljava/lang/String;

    const/4 v1, 0x4

    if-ne p4, v1, :cond_6

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->megagroup:Z

    :goto_4
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$68;

    invoke-direct {v2, p0, p5, v0}, Lorg/telegram/messenger/MessagesController$68;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    goto :goto_1

    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->broadcast:Z

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public deleteDialog(JI)V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JZII)V

    return-void
.end method

.method public deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "IZ)V"
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IZJLorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IZJLorg/telegram/tgnet/TLObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "IZJ",
            "Lorg/telegram/tgnet/TLObject;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-nez p8, :cond_1

    :goto_0
    return-void

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-nez v2, :cond_b

    if-nez p4, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_2

    iput-boolean v8, v2, Lorg/telegram/messenger/MessageObject;->deleted:Z

    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, p4}, Lorg/telegram/messenger/MessagesController;->markChannelDialogMessageAsDeleted(Ljava/util/ArrayList;I)V

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, p1, v8, p4}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeleted(Ljava/util/ArrayList;ZI)Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, p1, v5, v8, p4}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-virtual {v2, v3, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move-object v2, v6

    :goto_3
    if-eqz p4, :cond_8

    if-eqz p8, :cond_7

    check-cast p8, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;

    :goto_4
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$32;

    move-wide/from16 v0, p6

    invoke-direct {v3, p0, p4, v0, v1}, Lorg/telegram/messenger/MessagesController$32;-><init>(Lorg/telegram/messenger/MessagesController;IJ)V

    move-object/from16 v0, p8

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_7
    new-instance p8, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;

    invoke-direct/range {p8 .. p8}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;-><init>()V

    move-object/from16 v0, p8

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->id:Ljava/util/ArrayList;

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    move-object/from16 v0, p8

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    :try_start_0
    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual/range {p8 .. p8}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->getObjectSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-direct {v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x7

    :try_start_1
    invoke-virtual {v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    invoke-virtual {v2, p4}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_5
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide p6

    goto :goto_4

    :catch_0
    move-exception v2

    move-object v3, v2

    move-object v2, v5

    :goto_6
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_8
    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v3

    invoke-virtual {v3, p3, p2, v5}, Lorg/telegram/messenger/SecretChatHelper;->sendMessagesDeleteMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    :cond_9
    if-eqz p8, :cond_a

    check-cast p8, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;

    :goto_7
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$33;

    move-wide/from16 v0, p6

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/messenger/MessagesController$33;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    move-object/from16 v0, p8

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_a
    new-instance p8, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;

    invoke-direct/range {p8 .. p8}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;-><init>()V

    move-object/from16 v0, p8

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->id:Ljava/util/ArrayList;

    move-object/from16 v0, p8

    iput-boolean p5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->revoke:Z

    :try_start_2
    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual/range {p8 .. p8}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->getObjectSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-direct {v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v3, 0x7

    :try_start_3
    invoke-virtual {v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    invoke-virtual {v2, p4}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_8
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide p6

    goto :goto_7

    :catch_1
    move-exception v2

    move-object v3, v2

    move-object v2, v5

    :goto_9
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_2
    move-exception v3

    goto :goto_9

    :catch_3
    move-exception v3

    goto :goto_6

    :cond_b
    move-object v2, v5

    goto/16 :goto_3
.end method

.method public deleteUserChannelHistory(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;I)V
    .locals 3

    if-nez p3, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->deleteUserChannelHistory(II)V

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteUserHistory;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$35;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$35;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p1, :cond_5

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_4

    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    if-eqz v0, :cond_3

    iget-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_2

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;-><init>()V

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-object v6, v0

    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v0, Lorg/telegram/messenger/MessagesController$80;

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController$80;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;IZLorg/telegram/tgnet/TLRPC$InputUser;)V

    const/16 v1, 0x40

    invoke-virtual {v7, v6, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;-><init>()V

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_leaveChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-object v6, v0

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;-><init>()V

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    iput-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;->kicked:Z

    move-object v6, v0

    goto :goto_1

    :cond_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;-><init>()V

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;->chat_id:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    move-object v6, v0

    goto :goto_1

    :cond_5
    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v7, v1, v3, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    move v1, v2

    :goto_2
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget v4, p2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-ne v0, v4, :cond_7

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v3

    :goto_3
    if-eqz v0, :cond_6

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p3, v3}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v7, v4, v5

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_6
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method public deleteUserPhoto(Lorg/telegram/tgnet/TLRPC$InputPhoto;)V
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_2

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;-><init>()V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoEmpty;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x5ff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/MessagesController$29;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$29;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;-><init>()V

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;->id:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$30;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$30;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public didAddedNewTask(ILandroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$18;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesController$18;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    new-instance v0, Lorg/telegram/messenger/MessagesController$19;

    invoke-direct {v0, p0, p2}, Lorg/telegram/messenger/MessagesController$19;-><init>(Lorg/telegram/messenger/MessagesController;Landroid/util/SparseArray;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    if-ne p1, v0, :cond_1

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/String;

    aget-object v1, p2, v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$4;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$4;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    if-ne p1, v0, :cond_2

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget v0, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    if-ne p1, v0, :cond_0

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/Integer;

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Long;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_4

    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput v6, v3, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-eqz v2, :cond_3

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_4
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public generateJoinMessage(IZ)V
    .locals 8

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-eqz v1, :cond_2

    :cond_0
    if-nez p2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    const/16 v1, 0x100

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v1

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput p1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v1, p1

    int-to-long v6, v1

    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messageService;->post:Z

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_3

    iget v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    :cond_3
    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/telegram/messenger/MessageObject;

    const/4 v5, 0x0

    invoke-direct {v0, v3, v5, v2}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v3, Lorg/telegram/messenger/MessagesController$98;

    invoke-direct {v3, p0, v6}, Lorg/telegram/messenger/MessagesController$98;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v5

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    new-instance v0, Lorg/telegram/messenger/MessagesController$99;

    invoke-direct {v0, p0, p1, v6}, Lorg/telegram/messenger/MessagesController$99;-><init>(Lorg/telegram/messenger/MessagesController;ILjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public generateUpdateMessage()V
    .locals 3

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    sget-object v1, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_getAppChangelog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_getAppChangelog;-><init>()V

    sget-object v1, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_help_getAppChangelog;->prev_app_version:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$85;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$85;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public getBlockedUsers(Z)V
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->loadingBlockedUsers:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->loadingBlockedUsers:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getBlockedUsers()V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;->offset:I

    const/16 v1, 0xc8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;->limit:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$27;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$27;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method protected getChannelDifference(IIJLorg/telegram/tgnet/TLRPC$InputChannel;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v1, 0x64

    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    move-object v2, v0

    move v3, v1

    :goto_1
    if-nez p5, :cond_3

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p5

    :cond_3
    if-eqz p5, :cond_4

    iget-wide v0, p5, Lorg/telegram/tgnet/TLRPC$InputChannel;->access_hash:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_8

    :cond_4
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lorg/telegram/messenger/MessagesStorage;->removePendingTask(J)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_7

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    move v3, v1

    goto :goto_1

    :cond_8
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_9

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p5}, Lorg/telegram/tgnet/TLRPC$InputChannel;->getObjectSize()I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    invoke-direct {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x6

    :try_start_1
    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    invoke-virtual {v0, p2}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    invoke-virtual {p5, v0}, Lorg/telegram/tgnet/TLRPC$InputChannel;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v4

    :goto_3
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;-><init>()V

    iput-object p5, v6, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilterEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilterEmpty;-><init>()V

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->filter:Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->pts:I

    iput v3, v6, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->limit:I

    const/4 v0, 0x3

    if-eq p2, v0, :cond_a

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$TL_updates_getChannelDifference;->force:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start getChannelDifference with pts = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " channelId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v0, Lorg/telegram/messenger/MessagesController$94;

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController$94;-><init>(Lorg/telegram/messenger/MessagesController;IIJ)V

    invoke-virtual {v7, v6, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_5
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_9
    move-wide v4, p3

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_5
.end method

.method public getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method public getDifference()V
    .locals 4

    sget v0, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getDifference(IIIZ)V

    return-void
.end method

.method public getDifference(IIIZ)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->registerForPush(Ljava/lang/String;)V

    sget v0, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->loadCurrentState()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p4, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v0, :cond_0

    :cond_2
    iput-boolean v3, p0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;-><init>()V

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->pts:I

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->date:I

    iput p3, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->qts:I

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->date:I

    if-nez v1, :cond_3

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getDifference;->date:I

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start getDifference with date = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->setIsUpdating(Z)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$95;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$95;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    return-object v0
.end method

.method public getEncryptedChatDB(IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChat(ILjava/util/concurrent/Semaphore;Ljava/util/ArrayList;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p0, v0, v4}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    invoke-virtual {p0, v1, v5}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getExportedInvite(I)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->exportedChats:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    return-object v0
.end method

.method public getNewDeleteTask(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$20;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesController$20;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getUpdatesStartTime(I)J
    .locals 2

    if-nez p1, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public getUser(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_0
.end method

.method public getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->fullUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;

    return-object v0
.end method

.method public getUsers()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public hideReportSpam(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 3

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "Notifications"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "spam3_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    long-to-int v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;-><init>()V

    if-eqz p3, :cond_3

    iget v1, p3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :cond_2
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$13;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$13;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_2

    iget v1, p4, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1
.end method

.method public isDialogMuted(J)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "Notifications"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notify2_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyuntil_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    if-ge v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public loadChannelParticipants(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    const/16 v1, 0x20

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$41;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/MessagesController$41;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/lang/Integer;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public loadChatInfo(ILjava/util/concurrent/Semaphore;Z)V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(ILjava/util/concurrent/Semaphore;ZZ)V

    return-void
.end method

.method public loadCurrentState()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->updatingState:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->updatingState:Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates_getState;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates_getState;-><init>()V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$87;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$87;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public loadDialogPhotos(IIIJZI)V
    .locals 12

    if-eqz p6, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/MessagesStorage;->getDialogPhotos(IIIJI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p1, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;-><init>()V

    iput p3, v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->limit:I

    iput p2, v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->offset:I

    move-wide/from16 v0, p4

    long-to-int v3, v0

    int-to-long v4, v3

    iput-wide v4, v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->max_id:J

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$23;

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-wide/from16 v8, p4

    move/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lorg/telegram/messenger/MessagesController$23;-><init>(Lorg/telegram/messenger/MessagesController;IIIJI)V

    invoke-virtual {v2, v11, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    :cond_2
    if-gez p1, :cond_0

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    iput p3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    iput p2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset:I

    move-wide/from16 v0, p4

    long-to-int v3, v0

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_id:I

    const-string/jumbo v3, ""

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    new-instance v3, Lorg/telegram/messenger/MessagesController$24;

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-wide/from16 v8, p4

    move/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lorg/telegram/messenger/MessagesController$24;-><init>(Lorg/telegram/messenger/MessagesController;IIIJI)V

    invoke-virtual {v11, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto/16 :goto_0
.end method

.method public loadDialogs(IIZ)V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "load cacheOffset = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " count = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " cache = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0, p2}, Lorg/telegram/messenger/MessagesStorage;->getDialogs(II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    goto :goto_1

    :cond_2
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;-><init>()V

    iput p2, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->limit:I

    iput-boolean v2, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->exclude_pinned:Z

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_2
    if-ltz v3, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v5, :cond_4

    :cond_3
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_2

    :cond_4
    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v5, v6

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    long-to-int v6, v6

    if-eqz v5, :cond_3

    if-eq v6, v2, :cond_3

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lez v5, :cond_3

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_date:I

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_id:I

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v1, :cond_7

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v0, v0

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move v1, v2

    :cond_5
    if-nez v1, :cond_6

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :cond_6
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/MessagesController$55;

    invoke-direct {v1, p0, p2}, Lorg/telegram/messenger/MessagesController$55;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-virtual {v0, v4, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_7
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v1, :cond_8

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v0, v0

    goto :goto_3

    :cond_8
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    goto :goto_3
.end method

.method public loadFullChat(IIZ)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-int v0, p1

    int-to-long v2, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    :cond_2
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$10;

    invoke-direct {v3, p0, v1, p1, p2}, Lorg/telegram/messenger/MessagesController$10;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$Chat;II)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;-><init>()V

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;->chat_id:I

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_4
    const/4 v4, 0x0

    invoke-direct {p0, v4, v2, v3}, Lorg/telegram/messenger/MessagesController;->reloadDialogsReadValue(Ljava/util/ArrayList;J)V

    goto :goto_1
.end method

.method public loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    int-to-long v2, v1

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->reloadDialogsReadValue(Ljava/util/ArrayList;J)V

    :cond_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$11;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$11;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;I)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0
.end method

.method public loadMessages(JIIIZIIIIZI)V
    .locals 19

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v1 .. v17}, Lorg/telegram/messenger/MessagesController;->loadMessages(JIIIZIIIIZIIIIZ)V

    return-void
.end method

.method public loadMessages(JIIIZIIIIZIIIIZ)V
    .locals 21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "load messages in chat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " max_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mindate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " guid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " load_type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " last_message_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " firstUnread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " underad count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p14

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " last_date "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p15

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " queryFromServer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    move-wide/from16 v0, p1

    long-to-int v2, v0

    if-nez p6, :cond_0

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v3 .. v13}, Lorg/telegram/messenger/MessagesStorage;->getMessages(JIIIIIIZI)V

    :goto_0
    return-void

    :cond_1
    new-instance v19, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;-><init>()V

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    move-object/from16 v0, v19

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/4 v3, 0x4

    move/from16 v0, p9

    if-ne v0, v3, :cond_3

    move/from16 v0, p3

    neg-int v2, v0

    add-int/lit8 v2, v2, 0x5

    move-object/from16 v0, v19

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    :cond_2
    :goto_1
    move/from16 v0, p3

    move-object/from16 v1, v19

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->limit:I

    move/from16 v0, p4

    move-object/from16 v1, v19

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->offset_id:I

    move/from16 v0, p5

    move-object/from16 v1, v19

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->offset_date:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$52;

    move-object/from16 v4, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p1

    move/from16 v10, p8

    move/from16 v11, p13

    move/from16 v12, p10

    move/from16 v13, p14

    move/from16 v14, p15

    move/from16 v15, p9

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p16

    invoke-direct/range {v3 .. v18}, Lorg/telegram/messenger/MessagesController$52;-><init>(Lorg/telegram/messenger/MessagesController;IIIJIIIIIIZIZ)V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    move/from16 v0, p9

    if-ne v0, v3, :cond_4

    move/from16 v0, p3

    neg-int v2, v0

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v19

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    move/from16 v0, p9

    if-ne v0, v3, :cond_5

    move/from16 v0, p3

    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v19

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    goto :goto_1

    :cond_5
    const/4 v3, 0x2

    move/from16 v0, p9

    if-ne v0, v3, :cond_6

    if-eqz p4, :cond_6

    move/from16 v0, p3

    neg-int v2, v0

    add-int/lit8 v2, v2, 0x6

    move-object/from16 v0, v19

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    goto :goto_1

    :cond_6
    if-gez v2, :cond_2

    if-eqz p4, :cond_2

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    move-object/from16 v0, v19

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    move-object/from16 v0, v19

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->limit:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v19

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->limit:I

    goto/16 :goto_1
.end method

.method public loadPeerSettings(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    int-to-long v0, v0

    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->loadingPeerSettings:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "Notifications"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spam3_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v6, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spam_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;-><init>()V

    if-eqz p1, :cond_4

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :cond_2
    :goto_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$16;

    invoke-direct {v4, p0, v0, v1}, Lorg/telegram/messenger/MessagesController$16;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :cond_3
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v0, v0

    int-to-long v0, v0

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_2

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_hideReportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_2

    :cond_5
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;-><init>()V

    if-eqz p1, :cond_7

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :cond_6
    :goto_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessagesController$17;

    invoke-direct {v4, p0, v0, v1}, Lorg/telegram/messenger/MessagesController$17;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_7
    if-eqz p2, :cond_6

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_3
.end method

.method public loadPinnedDialogs(JLjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPinnedDialogs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPinnedDialogs;-><init>()V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$97;

    invoke-direct {v2, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesController$97;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;J)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method protected loadUnknownChannel(Lorg/telegram/tgnet/TLRPC$Chat;J)V
    .locals 8

    const-wide/16 v4, 0x0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->gettingUnknownChannels:Ljava/util/HashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    cmp-long v0, p2, v4

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->removePendingTask(J)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;->channel_id:I

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;->access_hash:J

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->gettingUnknownChannels:Ljava/util/HashMap;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;-><init>()V

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerDialogs;->peers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmp-long v0, p2, v4

    if-nez v0, :cond_3

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLRPC$Chat;->getObjectSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v0, v3}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/TLRPC$Chat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide p2

    :cond_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/MessagesController$92;

    invoke-direct {v1, p0, p2, p3, p1}, Lorg/telegram/messenger/MessagesController$92;-><init>(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public markChannelDialogMessageAsDeleted(Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    neg-int v1, p2

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v3, v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/messenger/MessageObject;->deleted:Z

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public markDialogAsRead(JIIIZZ)V
    .locals 9

    long-to-int v1, p1

    const/16 v0, 0x20

    shr-long v2, p1, v0

    long-to-int v0, v2

    if-eqz v1, :cond_4

    if-eqz p4, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    int-to-long v4, p4

    instance-of v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;-><init>()V

    neg-int v2, v1

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iput p4, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_readHistory;->max_id:I

    neg-int v1, v1

    int-to-long v2, v1

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    or-long/2addr v4, v2

    move-object v7, v0

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    move-wide v2, p1

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesStorage;->processPendingRead(JJI)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v6

    new-instance v0, Lorg/telegram/messenger/MessagesController$63;

    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p7

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController$63;-><init>(Lorg/telegram/messenger/MessagesController;JZI)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    const v0, 0x7fffffff

    if-eq p4, v0, :cond_0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/MessagesController$64;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$64;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v0, v7, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput p4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readHistory;->max_id:I

    move-object v7, v0

    goto :goto_1

    :cond_4
    if-eqz p5, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v7

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v0, :cond_5

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v0, :cond_5

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;-><init>()V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget v2, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget-wide v2, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    iput p5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;->max_date:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$65;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$65;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    int-to-long v4, p3

    move-wide v2, p1

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesStorage;->processPendingRead(JJI)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v6

    new-instance v0, Lorg/telegram/messenger/MessagesController$66;

    move-object v1, p0

    move-wide v2, p1

    move v4, p5

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController$66;-><init>(Lorg/telegram/messenger/MessagesController;JIZ)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    iget v0, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    if-lez v0, :cond_0

    if-eqz p6, :cond_0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget v1, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->createTaskForSecretChat(IIIILjava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public markMessageAsRead(JJI)V
    .locals 7

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-eqz v0, :cond_0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    if-gtz p5, :cond_1

    const/high16 v0, -0x80000000

    if-eq p5, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    long-to-int v0, p1

    const/16 v1, 0x20

    shr-long v2, p1, v1

    long-to-int v1, v2

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v5, v2}, Lorg/telegram/messenger/SecretChatHelper;->sendMessagesReadMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    if-lez p5, :cond_0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    const/4 v4, 0x0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->createTaskForSecretChat(IIIILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public markMessageContentAsRead(Lorg/telegram/messenger/MessageObject;)V
    .locals 7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    int-to-long v0, v0

    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v3, :cond_0

    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v4, v3

    const/16 v3, 0x20

    shl-long/2addr v4, v3

    or-long/2addr v0, v4

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesStorage;->markMessagesContentAsRead(Ljava/util/ArrayList;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesReadContent:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const/high16 v6, -0x80000000

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->markMessageAsRead(JJI)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;-><init>()V

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readMessageContents;->id:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$62;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$62;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public performLogout(Z)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "Notifications"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "emoji"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "lastGifLoadTime"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "lastStickersLoadTime"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "gifhint"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->unregistedPush()V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_logOut;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_logOut;-><init>()V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$84;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$84;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :goto_0
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->clearConfig()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesStorage;->cleanup(Z)V

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->cleanup()V

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->deleteAllAppAccounts()V

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/CContactsController;->deleteAllAppAccounts()V

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->cleanup()V

    goto :goto_0
.end method

.method public pinChannelMessage(Lorg/telegram/tgnet/TLRPC$Chat;IZ)V
    .locals 3

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iput p2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;->id:I

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_updatePinnedMessage;->silent:Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/MessagesController$34;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$34;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pinDialog(JZLorg/telegram/tgnet/TLRPC$InputPeer;J)Z
    .locals 7

    long-to-int v4, p1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-ne v1, p3, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iput-boolean p3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz p3, :cond_7

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v3, v2

    move v2, v1

    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v5, :cond_6

    :cond_3
    add-int/lit8 v1, v3, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    :goto_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    if-nez p3, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-eqz v4, :cond_a

    const-wide/16 v2, -0x1

    cmp-long v1, p5, v2

    if-eqz v1, :cond_a

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;-><init>()V

    iput-boolean p3, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;->pinned:Z

    if-nez p4, :cond_5

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p4

    :cond_5
    instance-of v1, p4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    goto :goto_2

    :cond_8
    iput-object p4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const-wide/16 v4, 0x0

    cmp-long v1, p5, v4

    if-nez v1, :cond_9

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p4}, Lorg/telegram/tgnet/TLRPC$InputPeer;->getObjectSize()I

    move-result v4

    add-int/lit8 v4, v4, 0x10

    invoke-direct {v1, v4}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    invoke-virtual {v1, p1, p2}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V

    invoke-virtual {v1, p3}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBool(Z)V

    invoke-virtual {p4, v1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide p5

    :cond_9
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$96;

    invoke-direct {v2, p0, p5, p6}, Lorg/telegram/messenger/MessagesController$96;-><init>(Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v1, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_a
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    invoke-virtual {v1, p1, p2, v0}, Lorg/telegram/messenger/MessagesStorage;->setDialogPinned(JI)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    :goto_4
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_4
.end method

.method public processChatInfo(ILorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/ArrayList;ZZZLorg/telegram/messenger/MessageObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/telegram/tgnet/TLRPC$ChatFull;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;ZZZ",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    if-eqz p4, :cond_0

    if-lez p1, :cond_0

    if-nez p6, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p5}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Lorg/telegram/messenger/MessagesController$42;

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p2

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesController$42;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;ZLorg/telegram/tgnet/TLRPC$ChatFull;ZLorg/telegram/messenger/MessageObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public processDialogsUpdate(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$messages_Dialogs;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$60;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesController$60;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processDialogsUpdateRead(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/MessagesController$58;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MessagesController$58;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processLoadedBlockedUsers(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/MessagesController$28;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/messenger/MessagesController$28;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processLoadedDeleteTask(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$22;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesController$22;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processLoadedDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;IIIZZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$messages_Dialogs;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;IIIZZZ)V"
        }
    .end annotation

    sget-object v10, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesController$57;

    move-object v1, p0

    move/from16 v2, p5

    move-object v3, p1

    move/from16 v4, p6

    move v5, p4

    move v6, p3

    move-object v7, p2

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/MessagesController$57;-><init>(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$messages_Dialogs;ZIILjava/util/ArrayList;ZZ)V

    invoke-virtual {v10, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processLoadedMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIZIIIIIIZZIZ)V
    .locals 22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processLoadedMessages size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in chat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " max_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " guid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " load_type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " last_message_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p14

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " firstUnread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " underad count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " last_date "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " queryFromServer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MessagesController$54;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move/from16 v8, p7

    move/from16 v9, p4

    move/from16 v10, p13

    move/from16 v11, p17

    move/from16 v12, p9

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p8

    move/from16 v16, p10

    move/from16 v17, p14

    move/from16 v18, p16

    move/from16 v19, p11

    move/from16 v20, p12

    move/from16 v21, p15

    invoke-direct/range {v3 .. v21}, Lorg/telegram/messenger/MessagesController$54;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$messages_Messages;JZIIZIIIIIZIIIZ)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processLoadedUserPhotos(Lorg/telegram/tgnet/TLRPC$photos_Photos;IIIJZI)V
    .locals 9

    if-nez p7, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$photos_Photos;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/telegram/messenger/MessagesStorage;->putDialogPhotos(ILorg/telegram/tgnet/TLRPC$photos_Photos;)V

    :cond_0
    new-instance v0, Lorg/telegram/messenger/MessagesController$31;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p7

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController$31;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$photos_Photos;ZIIII)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(IIIJZI)V

    goto :goto_0
.end method

.method protected processNewChannelDifferenceParams(III)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processNewChannelDifferenceParams pts = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " pts_count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " channeldId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    neg-int v1, p3

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p2

    if-ne v1, p1, :cond_4

    const-string/jumbo v0, "APPLY CHANNEL PTS"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p3, p1}, Lorg/telegram/messenger/MessagesStorage;->saveChannelPts(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    cmp-long v1, v2, v4

    if-gtz v1, :cond_9

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ADD CHANNEL UPDATE TO QUEUE pts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pts_count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    new-instance v1, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesController$1;)V

    iput p1, v1, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->pts:I

    iput p2, v1, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->pts_count:I

    iput p3, v1, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->chat_id:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, p3}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    goto/16 :goto_0
.end method

.method protected processNewDifferenceParams(IIII)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processNewDifferenceParams seq = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " pts = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " date = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " pts_count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    sget v0, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    add-int/2addr v0, p4

    if-ne v0, p2, :cond_3

    const-string/jumbo v0, "APPLY PTS"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    sput p2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->saveDiffParams(IIII)V

    :cond_0
    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    sget v0, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p1, :cond_7

    const-string/jumbo v0, "APPLY SEQ"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    sput p1, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    sput p3, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->saveDiffParams(IIII)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    sget v0, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    if-eq v0, p2, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v0, :cond_4

    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ADD UPDATE TO QUEUE pts = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " pts_count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    :cond_5
    new-instance v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesController$1;)V

    iput p2, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->pts:I

    iput p4, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;->pts_count:I

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    goto/16 :goto_0

    :cond_7
    sget v0, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    if-eq v0, p1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v0, :cond_8

    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-gtz v0, :cond_a

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ADD UPDATE TO QUEUE seq = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    :cond_9
    new-instance v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesController$1;)V

    iput p1, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;->seq:I

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    goto/16 :goto_1
.end method

.method public processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Update;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;Z)Z"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    new-instance v4, Lorg/telegram/messenger/MessagesController$106;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$106;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    new-instance v27, Landroid/util/SparseArray;

    invoke-direct/range {v27 .. v27}, Landroid/util/SparseArray;-><init>()V

    new-instance v28, Landroid/util/SparseArray;

    invoke-direct/range {v28 .. v28}, Landroid/util/SparseArray;-><init>()V

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    new-instance v31, Landroid/util/SparseArray;

    invoke-direct/range {v31 .. v31}, Landroid/util/SparseArray;-><init>()V

    const/4 v6, 0x0

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x1

    if-eqz p2, :cond_4

    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v5, v4, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    iget v9, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    :cond_3
    move-object/from16 v19, v7

    :goto_2
    if-eqz p3, :cond_c

    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_3
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v5, v4, :cond_5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v9, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v19, v4

    goto :goto_2

    :cond_5
    move-object/from16 v18, v7

    move v4, v8

    :goto_4
    if-eqz p4, :cond_c0

    const/4 v4, 0x0

    move/from16 v17, v4

    :goto_5
    if-nez p2, :cond_6

    if-eqz p3, :cond_7

    :cond_6
    new-instance v4, Lorg/telegram/messenger/MessagesController$107;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController$107;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_7
    const/4 v5, 0x0

    const/4 v4, 0x0

    move v10, v4

    move v15, v5

    move v11, v6

    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_a4

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Update;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "process update "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-nez v4, :cond_8

    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v4, :cond_2d

    :cond_8
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-eqz v4, :cond_d

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    iget-object v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    move-object v5, v4

    :goto_7
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v7, :cond_10

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    :cond_9
    :goto_8
    if-eqz v6, :cond_bf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v4, :cond_a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    :cond_a
    if-nez v4, :cond_b

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    :cond_b
    move-object/from16 v16, v4

    :goto_9
    if-eqz v17, :cond_be

    if-eqz v6, :cond_12

    if-nez v16, :cond_12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not found chat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v18, v4

    move v4, v5

    goto/16 :goto_4

    :cond_d
    move-object v4, v9

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v5, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " channelId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_e
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v5, :cond_f

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v5, v6, :cond_f

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    :cond_f
    move-object v5, v4

    goto/16 :goto_7

    :cond_10
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v7, :cond_11

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    goto/16 :goto_8

    :cond_11
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v7, :cond_9

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    goto/16 :goto_8

    :cond_12
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v34, v4, 0x3

    const/4 v4, 0x0

    move v9, v4

    move v6, v15

    move v4, v8

    :goto_a
    move/from16 v0, v34

    if-ge v9, v0, :cond_1e

    const/4 v7, 0x0

    if-eqz v9, :cond_bd

    const/4 v4, 0x1

    if-ne v9, v4, :cond_19

    iget v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iget-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v4, :cond_13

    const/4 v4, 0x1

    move v7, v4

    :cond_13
    :goto_b
    if-lez v8, :cond_bc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_14

    if-nez v7, :cond_15

    iget-boolean v15, v4, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v15, :cond_15

    :cond_14
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    :cond_15
    if-eqz v4, :cond_16

    if-nez v7, :cond_18

    iget-boolean v15, v4, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v15, :cond_18

    :cond_16
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_17

    if-nez v7, :cond_17

    iget-boolean v7, v4, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v7, :cond_17

    const/4 v4, 0x0

    :cond_17
    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    :cond_18
    if-nez v4, :cond_1d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not found user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_19
    const/4 v4, 0x2

    if-ne v9, v4, :cond_1b

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    if-eqz v4, :cond_1a

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    :goto_c
    move v8, v4

    goto :goto_b

    :cond_1a
    const/4 v4, 0x0

    goto :goto_c

    :cond_1b
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    add-int/lit8 v8, v9, -0x3

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    instance-of v8, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v8, :cond_1c

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    :goto_d
    move v8, v4

    goto :goto_b

    :cond_1c
    const/4 v4, 0x0

    goto :goto_d

    :cond_1d
    const/4 v7, 0x1

    if-ne v9, v7, :cond_bc

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v7, :cond_bc

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gtz v4, :cond_bc

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v15

    invoke-virtual {v15}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v7, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit8 v4, v6, 0x4

    :goto_e
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move v6, v4

    move v4, v8

    goto/16 :goto_a

    :cond_1e
    move v7, v6

    :goto_f
    if-eqz v16, :cond_1f

    move-object/from16 v0, v16

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_1f

    iget v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v4, v6

    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    :cond_1f
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    if-eqz v4, :cond_20

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_26

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v4, :cond_26

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;-><init>()V

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    :cond_20
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_27

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    iput-wide v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    :goto_10
    iget-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v6, v4

    :goto_11
    iget-wide v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_21

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget-boolean v9, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    iget-wide v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    invoke-virtual {v4, v9, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v4, v6, :cond_2b

    if-eqz v16, :cond_22

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-nez v4, :cond_2b

    :cond_22
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    if-nez v4, :cond_2b

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-nez v4, :cond_2b

    const/4 v4, 0x1

    :goto_12
    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    iget-wide v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v34, v0

    int-to-long v8, v8

    cmp-long v4, v34, v8

    if-nez v4, :cond_23

    const/4 v4, 0x0

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    const/4 v4, 0x0

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    const/4 v4, 0x1

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    :cond_23
    new-instance v8, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    iget-wide v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v8, v5, v0, v1, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    iget v4, v8, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xb

    if-ne v4, v6, :cond_2c

    or-int/lit8 v4, v7, 0x8

    move v6, v4

    :goto_13
    iget-wide v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_24

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-wide v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v4

    if-nez v4, :cond_25

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v4

    if-eqz v4, :cond_25

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    move v5, v6

    move v6, v11

    :goto_14
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move v15, v5

    move v11, v6

    goto/16 :goto_6

    :cond_26
    iget v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_20

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_20

    move v5, v7

    move v6, v11

    goto :goto_14

    :cond_27
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_28

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    iput-wide v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_10

    :cond_28
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-ne v4, v8, :cond_29

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    :cond_29
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v0, v4

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    iput-wide v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_10

    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v6, v4

    goto/16 :goto_11

    :cond_2b
    const/4 v4, 0x0

    goto/16 :goto_12

    :cond_2c
    iget v4, v8, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xa

    if-ne v4, v6, :cond_bb

    or-int/lit8 v4, v7, 0x10

    move v6, v4

    goto/16 :goto_13

    :cond_2d
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;

    if-eqz v4, :cond_2f

    const/4 v4, 0x0

    move v5, v4

    :goto_15
    iget-object v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v5, v4, :cond_2e

    iget-object v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_15

    :cond_2e
    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_2f
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    if-nez v4, :cond_30

    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    if-eqz v4, :cond_35

    :cond_30
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    if-eqz v4, :cond_33

    move-object v4, v9

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v5, :cond_32

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v5, v5

    iget v6, v9, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    int-to-long v4, v4

    :goto_16
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v36, v6

    move-wide v6, v4

    move-object/from16 v5, v36

    :goto_17
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_31

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    instance-of v8, v9, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    invoke-virtual {v4, v8, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_31
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v7, v9, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_32
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iget v6, v9, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v4, v4

    goto :goto_16

    :cond_33
    move-object v4, v9

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v5, :cond_34

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v5, v5

    iget v6, v9, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    int-to-long v4, v4

    :goto_18
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v36, v6

    move-wide v6, v4

    move-object/from16 v5, v36

    goto :goto_17

    :cond_34
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iget v6, v9, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v4, v4

    goto :goto_18

    :cond_35
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;

    if-eqz v4, :cond_37

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_36

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_36
    iget-object v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_37
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateUserTyping;

    if-nez v4, :cond_38

    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;

    if-eqz v4, :cond_3f

    :cond_38
    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    if-eq v4, v5, :cond_a3

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    neg-int v4, v4

    int-to-long v4, v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_ba

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    int-to-long v4, v4

    move-wide v6, v4

    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget-object v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_sendMessageCancelAction;

    if-eqz v5, :cond_3c

    if-eqz v4, :cond_3a

    const/4 v5, 0x0

    move v8, v5

    :goto_1a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v8, v5, :cond_39

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessagesController$PrintingUser;

    iget v5, v5, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    iget v0, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v5, v0, :cond_3b

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v11, 0x1

    :cond_39
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3a

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    :goto_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_3b
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_1a

    :cond_3c
    if-nez v4, :cond_b9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    :goto_1c
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessagesController$PrintingUser;

    iget v8, v4, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    iget v0, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v8, v0, :cond_3d

    const/4 v6, 0x1

    move-wide/from16 v0, v20

    iput-wide v0, v4, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    iget-object v7, v4, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, v9, Lorg/telegram/tgnet/TLRPC$Update;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-eq v7, v8, :cond_3e

    const/4 v11, 0x1

    :cond_3e
    iget-object v7, v9, Lorg/telegram/tgnet/TLRPC$Update;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    iput-object v7, v4, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    move v4, v6

    :goto_1d
    if-nez v4, :cond_3a

    new-instance v4, Lorg/telegram/messenger/MessagesController$PrintingUser;

    invoke-direct {v4}, Lorg/telegram/messenger/MessagesController$PrintingUser;-><init>()V

    iget v6, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    iput v6, v4, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    move-wide/from16 v0, v20

    iput-wide v0, v4, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    iget-object v6, v9, Lorg/telegram/tgnet/TLRPC$Update;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    iput-object v6, v4, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    goto :goto_1b

    :cond_3f
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipants;

    if-eqz v4, :cond_40

    or-int/lit8 v15, v15, 0x20

    iget-object v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_40
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;

    if-eqz v4, :cond_41

    or-int/lit8 v15, v15, 0x4

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_41
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;

    if-eqz v4, :cond_42

    or-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_42
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;

    if-eqz v4, :cond_43

    or-int/lit8 v15, v15, 0x2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesStorage;->clearUserPhotos(I)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_43
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;

    if-eqz v4, :cond_44

    or-int/lit16 v15, v15, 0x400

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_44
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateContactRegistered;

    if-eqz v4, :cond_46

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesController;->enableJoined:Z

    if-eqz v4, :cond_a3

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a3

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->isDialogHasMessages(J)Z

    move-result v4

    if-nez v4, :cond_a3

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;-><init>()V

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    iput v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    iput v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    const/4 v4, 0x0

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->unread:Z

    const/16 v4, 0x100

    iput v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->date:I

    iput v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    iput v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    int-to-long v6, v4

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v6, v5, v0, v1, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_45

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_46
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateContactLink;

    if-eqz v4, :cond_4c

    iget-object v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->my_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_contactLinkContact;

    if-eqz v4, :cond_49

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    neg-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_47

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_47
    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_49
    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4a

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4a
    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    neg-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b
    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_4c
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateNewGeoChatMessage;

    if-eqz v4, :cond_4d

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_4d
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    if-eqz v4, :cond_4f

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v5

    move-object v4, v9

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;->message:Lorg/telegram/tgnet/TLRPC$EncryptedMessage;

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/SecretChatHelper;->decryptMessage(Lorg/telegram/tgnet/TLRPC$EncryptedMessage;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_4e

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4e

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    iget-object v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;->message:Lorg/telegram/tgnet/TLRPC$EncryptedMessage;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->chat_id:I

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long v8, v4, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_b7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    :goto_1e
    const/4 v4, 0x0

    move v6, v4

    :goto_1f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v6, v4, :cond_4e

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v16, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move/from16 v3, v34

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1f

    :cond_4e
    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_4f
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedChatTyping;

    if-eqz v4, :cond_53

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/MessagesController;->getEncryptedChatDB(IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v4

    if-eqz v4, :cond_52

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    iput v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long v6, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_b6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    :goto_20
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_50
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessagesController$PrintingUser;

    iget v8, v4, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    iget v0, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v8, v0, :cond_50

    const/4 v6, 0x1

    move-wide/from16 v0, v20

    iput-wide v0, v4, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;-><init>()V

    iput-object v7, v4, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    move v4, v6

    :goto_21
    if-nez v4, :cond_51

    new-instance v4, Lorg/telegram/messenger/MessagesController$PrintingUser;

    invoke-direct {v4}, Lorg/telegram/messenger/MessagesController$PrintingUser;-><init>()V

    iget v6, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    iput v6, v4, Lorg/telegram/messenger/MessagesController$PrintingUser;->userId:I

    move-wide/from16 v0, v20

    iput-wide v0, v4, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;-><init>()V

    iput-object v6, v4, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    :cond_51
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_53
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;

    if-eqz v4, :cond_54

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->max_date:I

    iget v6, v9, Lorg/telegram/tgnet/TLRPC$Update;->date:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_54
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdd;

    if-eqz v4, :cond_55

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    iget v6, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    const/4 v7, 0x0

    iget v8, v9, Lorg/telegram/tgnet/TLRPC$Update;->inviter_id:I

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Update;->version:I

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(IIIII)V

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_55
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantDelete;

    if-eqz v4, :cond_56

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    iget v6, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Update;->version:I

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(IIIII)V

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_56
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateDcOptions;

    if-nez v4, :cond_57

    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateConfig;

    if-eqz v4, :cond_58

    :cond_57
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->updateDcSettings()V

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_58
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;

    if-eqz v4, :cond_59

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;

    move-object/from16 v0, v19

    invoke-virtual {v4, v9, v0}, Lorg/telegram/messenger/SecretChatHelper;->processUpdateEncryption(Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;Ljava/util/concurrent/ConcurrentHashMap;)V

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_59
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;

    if-eqz v4, :cond_5b

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;

    iget-boolean v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;->blocked:Z

    if-eqz v4, :cond_5a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lorg/telegram/messenger/MessagesStorage;->putBlockedUsers(Ljava/util/ArrayList;Z)V

    :goto_22
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/MessagesController$108;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v9}, Lorg/telegram/messenger/MessagesController$108;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_5a
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;->user_id:I

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesStorage;->deleteBlockedUser(I)V

    goto :goto_22

    :cond_5b
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;

    if-eqz v4, :cond_5c

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_5c
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    if-eqz v4, :cond_62

    move-object v4, v9

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->popup:Z

    if-eqz v5, :cond_5d

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->message:Ljava/lang/String;

    if-eqz v5, :cond_5d

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->message:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5d

    new-instance v5, Lorg/telegram/messenger/MessagesController$109;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lorg/telegram/messenger/MessagesController$109;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5d
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_61

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v6

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->local_id:I

    const/4 v6, 0x0

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->unread:Z

    const/16 v6, 0x100

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    iget v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->inbox_date:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    const v6, 0xbdb28

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v7

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    const-wide/32 v6, 0xbdb28

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    iget-object v6, v9, Lorg/telegram/tgnet/TLRPC$Update;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v6, :cond_5e

    iget-object v6, v9, Lorg/telegram/tgnet/TLRPC$Update;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit16 v6, v6, 0x200

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    :cond_5e
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->message:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->entities:Ljava/util/ArrayList;

    if-eqz v6, :cond_5f

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->entities:Ljava/util/ArrayList;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    :cond_5f
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v6, v5, v0, v1, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_60

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_61
    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_62
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;

    if-eqz v4, :cond_63

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_63
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;

    if-eqz v4, :cond_64

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_64
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;

    if-eqz v4, :cond_65

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_65
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;

    if-eqz v4, :cond_66

    iget-object v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_66
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateChannelWebPage;

    if-eqz v4, :cond_67

    iget-object v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_67
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;

    if-eqz v4, :cond_72

    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_68

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " channelId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_68
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_6e

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_70

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_69

    iget-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v6, :cond_6a

    :cond_69
    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    :cond_6a
    if-eqz v4, :cond_6b

    iget-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v6, :cond_6c

    :cond_6b
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget v6, v9, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    :cond_6c
    if-eqz v4, :cond_6d

    iget-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-nez v6, :cond_6d

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lorg/telegram/messenger/MessagesController;->loadUnknownChannel(Lorg/telegram/tgnet/TLRPC$Chat;J)V

    :cond_6d
    move-object v4, v5

    :cond_6e
    :goto_23
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_6f

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_71

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v5, v4, :cond_6f

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    :cond_6f
    :goto_24
    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_70
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    iget v6, v9, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v5

    goto :goto_23

    :cond_71
    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    goto :goto_24

    :cond_72
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    if-nez v4, :cond_73

    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;

    if-eqz v4, :cond_76

    :cond_73
    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    int-to-long v4, v4

    iget v6, v9, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    int-to-long v6, v6

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v6, v4

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    neg-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v34, v0

    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    if-eqz v4, :cond_75

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    neg-int v5, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v5, v4

    :goto_25
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_74

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    instance-of v6, v9, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;

    move-wide/from16 v0, v34

    invoke-virtual {v4, v6, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_74
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v7, v9, Lorg/telegram/tgnet/TLRPC$Update;->max_id:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_75
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    neg-int v5, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v5, v4

    goto :goto_25

    :cond_76
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteChannelMessages;

    if-eqz v4, :cond_79

    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_77

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " channelId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_77
    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_78

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_78
    iget-object v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_79
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;

    if-eqz v4, :cond_7b

    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_7a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " channelId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_7a
    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_7b
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;

    if-eqz v4, :cond_7e

    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_7c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " channelId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_7c
    move-object v4, v9

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseIntArray;

    if-nez v5, :cond_7d

    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iget v6, v9, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v14, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7d
    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;->id:I

    iget v6, v9, Lorg/telegram/tgnet/TLRPC$Update;->views:I

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_7e
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;

    if-eqz v4, :cond_80

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->chat_id:I

    iget v6, v9, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    const/4 v7, 0x2

    iget-boolean v8, v9, Lorg/telegram/tgnet/TLRPC$Update;->is_admin:Z

    if-eqz v8, :cond_7f

    const/4 v8, 0x1

    :goto_26
    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Update;->version:I

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(IIIII)V

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_7f
    const/4 v8, 0x0

    goto :goto_26

    :cond_80
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateChatAdmins;

    if-eqz v4, :cond_81

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_81
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSets;

    if-eqz v4, :cond_82

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_82
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;

    if-eqz v4, :cond_83

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_83
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateNewStickerSet;

    if-eqz v4, :cond_84

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_84
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;

    if-eqz v4, :cond_85

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_85
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateSavedGifs;

    if-eqz v4, :cond_86

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_86
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-nez v4, :cond_87

    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    if-eqz v4, :cond_9f

    :cond_87
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v7

    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    if-eqz v4, :cond_91

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    iget-object v5, v9, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v4, :cond_88

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    :cond_88
    if-nez v4, :cond_89

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    :cond_89
    if-eqz v4, :cond_8a

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_8a

    iget v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v4, v6

    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    :cond_8a
    :goto_27
    iget-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v4, :cond_8b

    iget v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_8b

    const/4 v4, 0x1

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    :cond_8b
    if-nez p4, :cond_94

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v4, 0x0

    move v6, v4

    :goto_28
    if-ge v6, v8, :cond_94

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    instance-of v9, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v9, :cond_93

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    iget v9, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_8c

    iget-boolean v0, v4, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8d

    :cond_8c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    :cond_8d
    if-eqz v4, :cond_8e

    iget-boolean v0, v4, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    move/from16 v16, v0

    if-eqz v16, :cond_90

    :cond_8e
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_8f

    iget-boolean v9, v4, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v9, :cond_8f

    const/4 v4, 0x0

    :cond_8f
    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    :cond_90
    if-nez v4, :cond_93

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_91
    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    iget-object v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    int-to-long v0, v7

    move-wide/from16 v34, v0

    cmp-long v5, v8, v34

    if-nez v5, :cond_92

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    :cond_92
    move-object v5, v4

    goto/16 :goto_27

    :cond_93
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_28

    :cond_94
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_9a

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    int-to-long v8, v4

    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    :goto_29
    iget-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v4, :cond_9d

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v6, v4

    :goto_2a
    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_95

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget-boolean v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    iget-wide v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    invoke-virtual {v4, v8, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_95
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v4, v6, :cond_9e

    const/4 v4, 0x1

    :goto_2b
    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    int-to-long v6, v7

    cmp-long v4, v8, v6

    if-nez v4, :cond_96

    const/4 v4, 0x1

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    const/4 v4, 0x0

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    const/4 v4, 0x0

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    :cond_96
    iget-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v4, :cond_98

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v4, :cond_97

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_98

    :cond_97
    const-string/jumbo v4, "-1"

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-string/jumbo v4, ""

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    :cond_98
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    new-instance v6, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v6, v5, v0, v1, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_99

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_99
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_9a
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_9b

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v4

    int-to-long v8, v4

    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_29

    :cond_9b
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_9c

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    :cond_9c
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v8, v4

    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_29

    :cond_9d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v6, v4

    goto/16 :goto_2a

    :cond_9e
    const/4 v4, 0x0

    goto/16 :goto_2b

    :cond_9f
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;

    if-eqz v4, :cond_a1

    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_a0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " channelId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v9, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_a0
    move-object v4, v9

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    iget v6, v9, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;->id:I

    invoke-virtual {v5, v6, v4}, Lorg/telegram/messenger/MessagesStorage;->updateChannelPinnedMessage(II)V

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_a1
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updateReadFeaturedStickers;

    if-eqz v4, :cond_a2

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_a2
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;

    if-eqz v4, :cond_a3

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a3
    move v5, v15

    move v6, v11

    goto/16 :goto_14

    :cond_a4
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a6

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a5
    :goto_2c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v4}, Lorg/telegram/messenger/MessagesController;->updatePrintingUsersWithNewMessages(JLjava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_a5

    const/4 v11, 0x1

    goto :goto_2c

    :cond_a6
    if-eqz v11, :cond_a7

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V

    :cond_a7
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a8

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v12, v0}, Lorg/telegram/messenger/ContactsController;->processContactsUpdates(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v12, v0}, Lorg/telegram/messenger/CContactsController;->processContactsUpdates(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;)V

    :cond_a8
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a9

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/MessagesController$110;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v5, v0, v1}, Lorg/telegram/messenger/MessagesController$110;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_a9
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_aa

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v4

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v9

    move-object/from16 v5, v25

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    :cond_aa
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ac

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ac

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/util/Map$Entry;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v7, 0x0

    move v8, v7

    :goto_2e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v8, v7, :cond_ab

    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_2e

    :cond_ab
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, -0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZ)V

    goto :goto_2d

    :cond_ac
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_ad

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v14, v5}, Lorg/telegram/messenger/MessagesStorage;->putChannelViews(Landroid/util/SparseArray;Z)V

    :cond_ad
    new-instance v4, Lorg/telegram/messenger/MessagesController$111;

    move-object/from16 v5, p0

    move v6, v15

    move-object/from16 v7, v32

    move-object/from16 v8, v23

    move-object/from16 v9, v22

    move-object/from16 v10, v26

    invoke-direct/range {v4 .. v14}, Lorg/telegram/messenger/MessagesController$111;-><init>(Lorg/telegram/messenger/MessagesController;ILjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v11

    new-instance v4, Lorg/telegram/messenger/MessagesController$112;

    move-object/from16 v5, p0

    move-object/from16 v6, v27

    move-object/from16 v7, v28

    move-object/from16 v8, v30

    move-object/from16 v9, v29

    move-object/from16 v10, v31

    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/MessagesController$112;-><init>(Lorg/telegram/messenger/MessagesController;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    invoke-virtual {v11, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ae

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->putWebPages(Ljava/util/HashMap;)V

    :cond_ae
    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_af

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_af

    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b1

    :cond_af
    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_b0

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v1, v5}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithReadMessages(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)V

    :cond_b0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v4, v0, v1, v2, v5}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsRead(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;Z)V

    :cond_b1
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessagesContentAsRead(Ljava/util/ArrayList;)V

    :cond_b2
    invoke-virtual/range {v31 .. v31}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_b3

    const/4 v4, 0x0

    move v5, v4

    :goto_2f
    invoke-virtual/range {v31 .. v31}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v5, v4, :cond_b3

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v7

    new-instance v8, Lorg/telegram/messenger/MessagesController$113;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v4, v6}, Lorg/telegram/messenger/MessagesController$113;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;I)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_2f

    :cond_b3
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b4

    const/4 v4, 0x0

    move v10, v4

    :goto_30
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_b4

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget v5, v7, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;->chat_id:I

    iget v6, v7, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;->max_date:I

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;->date:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->createTaskForSecretChat(IIIILjava/util/ArrayList;)V

    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_30

    :cond_b4
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_b5
    move v4, v6

    goto/16 :goto_21

    :cond_b6
    move-object v5, v4

    goto/16 :goto_20

    :cond_b7
    move-object v5, v4

    goto/16 :goto_1e

    :cond_b8
    move v4, v6

    goto/16 :goto_1d

    :cond_b9
    move-object v5, v4

    goto/16 :goto_1c

    :cond_ba
    move-wide v6, v4

    goto/16 :goto_19

    :cond_bb
    move v6, v7

    goto/16 :goto_13

    :cond_bc
    move v4, v6

    goto/16 :goto_e

    :cond_bd
    move v8, v4

    goto/16 :goto_b

    :cond_be
    move v7, v15

    goto/16 :goto_f

    :cond_bf
    move-object/from16 v16, v4

    goto/16 :goto_9

    :cond_c0
    move/from16 v17, v4

    goto/16 :goto_5
.end method

.method public processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V
    .locals 17

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShort;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->update:Lorg/telegram/tgnet/TLRPC$Update;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move v3, v12

    :goto_0
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/SecretChatHelper;->processPendingEncMessages()V

    if-nez p2, :cond_62

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_61

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v11, :cond_60

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    :cond_0
    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;

    if-nez v2, :cond_1

    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    if-eqz v2, :cond_27

    :cond_1
    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortChatMessage;

    if-eqz v2, :cond_e

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->from_id:I

    move v4, v2

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v3, :cond_4

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    :cond_3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    :cond_4
    move-object v3, v2

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    if-eqz v7, :cond_6f

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    if-eqz v7, :cond_6

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    :cond_5
    const/4 v5, 0x1

    move/from16 v16, v5

    move-object v5, v2

    move/from16 v2, v16

    :cond_6
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    if-eqz v7, :cond_6e

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    :cond_7
    const/4 v6, 0x1

    move/from16 v16, v6

    move-object v6, v5

    move-object v5, v2

    move/from16 v2, v16

    :goto_4
    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Lorg/telegram/tgnet/TLRPC$Updates;->via_bot_id:I

    if-eqz v13, :cond_9

    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->via_bot_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    if-nez v7, :cond_8

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$Updates;->via_bot_id:I

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    :cond_8
    const/4 v8, 0x1

    move/from16 v16, v8

    move-object v8, v7

    move/from16 v7, v16

    :cond_9
    move-object/from16 v0, p1

    instance-of v13, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    if-eqz v13, :cond_10

    if-eqz v3, :cond_b

    if-eqz v2, :cond_a

    if-nez v6, :cond_a

    if-eqz v5, :cond_b

    :cond_a
    if-eqz v7, :cond_f

    if-nez v8, :cond_f

    :cond_b
    const/4 v2, 0x1

    :goto_5
    move v6, v2

    :goto_6
    if-nez v6, :cond_6d

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6d

    const/4 v2, 0x0

    move v5, v2

    :goto_7
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_6d

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    instance-of v7, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v7, :cond_16

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v7, :cond_16

    :cond_c
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    invoke-virtual {v7, v2}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v7, :cond_d

    const/4 v2, 0x0

    :cond_d
    if-nez v2, :cond_15

    const/4 v2, 0x1

    :goto_8
    if-eqz v3, :cond_6c

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v5, :cond_6c

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gtz v5, :cond_6c

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v12, 0x1

    move v8, v12

    :goto_9
    if-eqz v2, :cond_17

    const/4 v2, 0x1

    :goto_a
    move v3, v8

    move v9, v2

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->user_id:I

    move v4, v2

    goto/16 :goto_3

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_10
    move-object/from16 v0, p1

    iget v13, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    if-nez v13, :cond_11

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    :cond_11
    if-eqz v13, :cond_13

    if-eqz v3, :cond_13

    if-eqz v2, :cond_12

    if-nez v6, :cond_12

    if-eqz v5, :cond_13

    :cond_12
    if-eqz v7, :cond_14

    if-nez v8, :cond_14

    :cond_13
    const/4 v2, 0x1

    :goto_b
    move v6, v2

    goto/16 :goto_6

    :cond_14
    const/4 v2, 0x0

    goto :goto_b

    :cond_15
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    :cond_16
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_7

    :cond_17
    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    add-int/2addr v2, v3

    move-object/from16 v0, p1

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-ne v2, v3, :cond_23

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->id:I

    iput v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->out:Z

    if-eqz v2, :cond_1c

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    :goto_c
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v2, v4

    iput-wide v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    :goto_d
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->silent:Z

    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->silent:Z

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->out:Z

    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->mentioned:Z

    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->mentioned:Z

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->media_unread:Z

    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->media_unread:Z

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->entities:Ljava/util/ArrayList;

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->message:Ljava/lang/String;

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    iput v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->via_bot_id:I

    iput v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->via_bot_id:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->reply_to_msg_id:I

    iput v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_to_msg_id:I

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v3, v2

    :goto_e
    iget-wide v12, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_18

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-boolean v7, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    iget-wide v12, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-virtual {v2, v7, v12, v13}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v12, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-ge v2, v3, :cond_1f

    const/4 v2, 0x1

    :goto_f
    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->unread:Z

    iget-wide v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    int-to-long v6, v6

    cmp-long v2, v2, v6

    if-nez v2, :cond_19

    const/4 v2, 0x0

    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->unread:Z

    const/4 v2, 0x0

    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->media_unread:Z

    const/4 v2, 0x1

    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    :cond_19
    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sput v2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    new-instance v6, Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;

    iget-wide v12, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {v6, v5, v2, v3}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;

    if-eqz v2, :cond_21

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->out:Z

    if-nez v2, :cond_20

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->user_id:I

    int-to-long v12, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v7}, Lorg/telegram/messenger/MessagesController;->updatePrintingUsersWithNewMessages(JLjava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    :goto_10
    if-eqz v2, :cond_1a

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V

    :cond_1a
    new-instance v5, Lorg/telegram/messenger/MessagesController$101;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v2, v4, v7}, Lorg/telegram/messenger/MessagesController$101;-><init>(Lorg/telegram/messenger/MessagesController;ZILjava/util/ArrayList;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_11
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v4, Lorg/telegram/messenger/MessagesController$103;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7}, Lorg/telegram/messenger/MessagesController$103;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_1b
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    move v2, v9

    goto/16 :goto_a

    :cond_1c
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    goto/16 :goto_c

    :cond_1d
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, p1

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    neg-int v2, v2

    int-to-long v2, v2

    iput-wide v2, v5, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    goto/16 :goto_d

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v3, v2

    goto/16 :goto_e

    :cond_1f
    const/4 v2, 0x0

    goto/16 :goto_f

    :cond_20
    const/4 v2, 0x0

    goto :goto_10

    :cond_21
    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    neg-int v2, v2

    int-to-long v4, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v7}, Lorg/telegram/messenger/MessagesController;->updatePrintingUsersWithNewMessages(JLjava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V

    :cond_22
    new-instance v4, Lorg/telegram/messenger/MessagesController$102;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v2, v1, v7}, Lorg/telegram/messenger/MessagesController$102;-><init>(Lorg/telegram/messenger/MessagesController;ZLorg/telegram/tgnet/TLRPC$Updates;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_11

    :cond_23
    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    if-eq v2, v3, :cond_6b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "need get diff short message, pts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts_count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-gtz v2, :cond_26

    :cond_24
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    :cond_25
    const-string/jumbo v2, "add to queue"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v9

    goto/16 :goto_a

    :cond_26
    const/4 v2, 0x1

    goto/16 :goto_a

    :cond_27
    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    if-nez v2, :cond_28

    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz v2, :cond_5b

    :cond_28
    const/4 v3, 0x0

    const/4 v2, 0x0

    move v4, v2

    :goto_12
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_2f

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-eqz v5, :cond_2e

    iget-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v5, :cond_2e

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    if-eqz v5, :cond_29

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v6, :cond_2b

    :cond_29
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    if-nez v5, :cond_2a

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    :cond_2a
    move-object v5, v6

    :cond_2b
    if-eqz v5, :cond_2c

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v5, :cond_2e

    :cond_2c
    if-nez v3, :cond_2d

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :cond_2d
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_12

    :cond_2f
    if-eqz v3, :cond_6a

    const/4 v2, 0x0

    move v4, v2

    :goto_13
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_6a

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Update;

    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v5, :cond_30

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "need get diff because of min channel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    const/4 v9, 0x1

    move v6, v9

    :goto_14
    if-nez v6, :cond_69

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v5, 0x1

    const/4 v7, 0x1

    invoke-virtual {v2, v3, v4, v5, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->updatesComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    move v7, v2

    move v5, v10

    move-object v4, v11

    :goto_15
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4e

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Update;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v3

    if-nez v3, :cond_37

    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    iput v3, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    iput v3, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    const/4 v3, 0x1

    move v8, v3

    :goto_16
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_31

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Update;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v10

    if-nez v10, :cond_31

    iget v10, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    iget v11, v3, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    add-int/2addr v10, v11

    iget v11, v3, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    if-ne v10, v11, :cond_31

    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v10, v3, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    iput v10, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    iget v10, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    add-int/2addr v3, v10

    iput v3, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    move v8, v3

    goto :goto_16

    :cond_30
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_13

    :cond_31
    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    iget v8, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    add-int/2addr v3, v8

    iget v8, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-ne v3, v8, :cond_33

    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v8, v10}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result v2

    if-nez v2, :cond_32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "need get diff inner TL_updates, seq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    const/4 v6, 0x1

    move v2, v6

    :goto_17
    move v3, v2

    move v2, v5

    :goto_18
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v5, 0x0

    move v7, v5

    move v6, v3

    move v5, v2

    goto/16 :goto_15

    :cond_32
    iget v2, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    sput v2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    move v2, v6

    goto :goto_17

    :cond_33
    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    iget v8, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-eq v3, v8, :cond_68

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " need get diff, pts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v2, :cond_34

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_34

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_36

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    sub-long/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v10, 0x5dc

    cmp-long v2, v2, v10

    if-gtz v2, :cond_36

    :cond_34
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_35

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimePts:J

    :cond_35
    const-string/jumbo v2, "add to queue"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->updatesQueuePts:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v6

    goto/16 :goto_17

    :cond_36
    const/4 v6, 0x1

    move v2, v6

    goto/16 :goto_17

    :cond_37
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_3e

    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Update;->qts:I

    iput v3, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    const/4 v3, 0x1

    move v8, v3

    :goto_19
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_38

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Update;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_38

    iget v10, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    add-int/lit8 v10, v10, 0x1

    iget v11, v3, Lorg/telegram/tgnet/TLRPC$Update;->qts:I

    if-ne v10, v11, :cond_38

    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Update;->qts:I

    iput v3, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    move v8, v3

    goto :goto_19

    :cond_38
    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    if-eqz v3, :cond_39

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    iget-object v8, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v3, v8

    iget v8, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-ne v3, v8, :cond_3a

    :cond_39
    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v5, v8}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    iget v2, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    sput v2, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    const/4 v5, 0x1

    move v2, v5

    move v3, v6

    goto/16 :goto_18

    :cond_3a
    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    iget v8, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-eq v3, v8, :cond_4d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " need get diff, qts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v2, :cond_3b

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_3b

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_3d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    sub-long/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v10, 0x5dc

    cmp-long v2, v2, v10

    if-gtz v2, :cond_3d

    :cond_3b
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_3c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeQts:J

    :cond_3c
    const-string/jumbo v2, "add to queue"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueQts:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v5

    move v3, v6

    goto/16 :goto_18

    :cond_3d
    const/4 v6, 0x1

    move v2, v5

    move v3, v6

    goto/16 :goto_18

    :cond_3e
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v3

    const/4 v8, 0x2

    if-ne v3, v8, :cond_4e

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUpdateChannelId(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v11

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_67

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_40

    const/4 v3, 0x0

    move v8, v3

    :goto_1a
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_66

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v13, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-ne v13, v11, :cond_3f

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v9}, Lorg/telegram/messenger/MessagesController;->loadUnknownChannel(Lorg/telegram/tgnet/TLRPC$Chat;J)V

    const/4 v3, 0x1

    :goto_1b
    move-object v8, v10

    move v9, v3

    :goto_1c
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    iput v3, v13, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    iput v3, v13, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    const/4 v3, 0x1

    move v10, v3

    :goto_1d
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v10, v3, :cond_41

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Update;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUpdateType(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_41

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUpdateChannelId(Lorg/telegram/tgnet/TLRPC$Update;)I

    move-result v14

    if-ne v11, v14, :cond_41

    iget v14, v13, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    iget v15, v3, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    add-int/2addr v14, v15

    iget v15, v3, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    if-ne v14, v15, :cond_41

    iget-object v14, v13, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v14, v3, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    iput v14, v13, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    iget v14, v13, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    add-int/2addr v3, v14

    iput v3, v13, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    move v10, v3

    goto :goto_1d

    :cond_3f
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto/16 :goto_1a

    :cond_40
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v10

    goto :goto_1c

    :cond_41
    if-nez v9, :cond_4c

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v9, v13, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    add-int/2addr v3, v9

    iget v9, v13, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-ne v3, v9, :cond_44

    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v8, v9}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result v2

    if-nez v2, :cond_43

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "need get channel diff inner TL_updates, channel_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    if-nez v4, :cond_42

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v5

    move v3, v6

    goto/16 :goto_18

    :cond_42
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v5

    move v3, v6

    goto/16 :goto_18

    :cond_43
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v8, v13, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget v3, v13, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    invoke-virtual {v2, v11, v3}, Lorg/telegram/messenger/MessagesStorage;->saveChannelPts(II)V

    move v2, v5

    move v3, v6

    goto/16 :goto_18

    :cond_44
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v9, v13, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    if-eq v3, v9, :cond_4d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " need get channel diff, pts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v13, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v13, Lorg/telegram/tgnet/TLRPC$TL_updates;->pts_count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " channelId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-nez v3, :cond_45

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_45
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_46

    if-eqz v2, :cond_46

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v14, 0x5dc

    cmp-long v3, v8, v14

    if-gtz v3, :cond_49

    :cond_46
    if-nez v2, :cond_47

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    const-string/jumbo v2, "add to queue"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_48

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v4

    :goto_1e
    move v3, v6

    move-object v4, v2

    move v2, v5

    goto/16 :goto_18

    :cond_49
    if-nez v4, :cond_4a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1e

    :cond_4a
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b
    move-object v2, v4

    goto :goto_1e

    :cond_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "need load unknown channel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_4d
    move v2, v5

    move v3, v6

    goto/16 :goto_18

    :cond_4e
    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    if-eqz v2, :cond_53

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq_start:I

    if-eq v2, v3, :cond_4f

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq_start:I

    if-ne v2, v3, :cond_52

    :cond_4f
    const/4 v2, 0x1

    :goto_1f
    if-eqz v2, :cond_56

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v7, v8}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    if-eqz v2, :cond_50

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    sput v2, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    :cond_50
    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    if-eqz v2, :cond_51

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    sput v2, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    :cond_51
    :goto_20
    move v3, v12

    move v10, v5

    move v9, v6

    move-object v11, v4

    goto/16 :goto_0

    :cond_52
    const/4 v2, 0x0

    goto :goto_1f

    :cond_53
    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    if-eq v2, v3, :cond_54

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    if-eqz v2, :cond_54

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    if-ne v2, v3, :cond_55

    :cond_54
    const/4 v2, 0x1

    goto :goto_1f

    :cond_55
    const/4 v2, 0x0

    goto :goto_1f

    :cond_56
    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updatesCombined;

    if-eqz v2, :cond_59

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "need get diff TL_updatesCombined, seq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq_start:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :goto_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    if-nez v2, :cond_57

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-eqz v2, :cond_57

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    sub-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v8, 0x5dc

    cmp-long v2, v2, v8

    if-gtz v2, :cond_5a

    :cond_57
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-nez v2, :cond_58

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeSeq:J

    :cond_58
    const-string/jumbo v2, "add TL_updates/Combined to queue"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->updatesQueueSeq:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    :cond_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "need get diff TL_updates, seq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_21

    :cond_5a
    const/4 v6, 0x1

    goto/16 :goto_20

    :cond_5b
    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updatesTooLong;

    if-eqz v2, :cond_5c

    const-string/jumbo v2, "need get diff TL_updatesTooLong"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    const/4 v9, 0x1

    move v3, v12

    goto/16 :goto_0

    :cond_5c
    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesSeq;

    if-eqz v2, :cond_5d

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->seq:I

    sput v2, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    move v3, v12

    goto/16 :goto_0

    :cond_5d
    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/telegram/messenger/MessagesController$UserActionUpdatesPts;

    if-eqz v2, :cond_5f

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    if-eqz v2, :cond_5e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chat_id:I

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->saveChannelPts(II)V

    move v3, v12

    goto/16 :goto_0

    :cond_5e
    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;->pts:I

    sput v2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    :cond_5f
    move v3, v12

    goto/16 :goto_0

    :cond_60
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lorg/telegram/messenger/MessagesController;->processChannelsUpdatesQueue(II)V

    goto/16 :goto_2

    :cond_61
    if-eqz v9, :cond_65

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    :cond_62
    if-eqz v10, :cond_63

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;-><init>()V

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;->max_qts:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/MessagesController$104;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/messenger/MessagesController$104;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v4, v2, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_63
    if-eqz v3, :cond_64

    new-instance v2, Lorg/telegram/messenger/MessagesController$105;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/messenger/MessagesController$105;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_64
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v5, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v6, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->saveDiffParams(IIII)V

    return-void

    :cond_65
    const/4 v2, 0x0

    :goto_22
    const/4 v4, 0x3

    if-ge v2, v4, :cond_62

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lorg/telegram/messenger/MessagesController;->processUpdatesQueue(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_66
    move v3, v9

    goto/16 :goto_1b

    :cond_67
    move-object v8, v3

    goto/16 :goto_1c

    :cond_68
    move v2, v6

    goto/16 :goto_17

    :cond_69
    move v5, v10

    move-object v4, v11

    goto/16 :goto_20

    :cond_6a
    move v6, v9

    goto/16 :goto_14

    :cond_6b
    move v2, v9

    goto/16 :goto_a

    :cond_6c
    move v8, v12

    goto/16 :goto_9

    :cond_6d
    move v2, v6

    goto/16 :goto_8

    :cond_6e
    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    goto/16 :goto_4

    :cond_6f
    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    goto/16 :goto_4
.end method

.method public putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    goto :goto_0

    :cond_2
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    if-nez p2, :cond_6

    if-eqz v0, :cond_5

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->version:I

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->version:I

    if-eq v1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->chats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    goto :goto_1
.end method

.method public putChats(Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p0, v0, p2}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->encryptedChats:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putEncryptedChats(Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {p0, v0, p2}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p2, :cond_4

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    div-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x14d

    if-eq v0, v1, :cond_4

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    const v1, 0xbdb28

    if-eq v0, v1, :cond_4

    move v1, v2

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-boolean v4, p1, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v4, :cond_8

    if-eqz v0, :cond_7

    if-nez v1, :cond_0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    :goto_2
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto :goto_2

    :cond_6
    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-ne v1, v4, :cond_9

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    :cond_9
    if-eqz v0, :cond_0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-eq v1, v0, :cond_0

    move v3, v2

    goto/16 :goto_0

    :cond_a
    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v1, :cond_0

    iput-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    :goto_3
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_d

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    :goto_4
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->users:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_c
    iput-object v6, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto :goto_3

    :cond_d
    iput-object v6, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    goto :goto_4
.end method

.method public putUsers(Ljava/util/ArrayList;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p0, v0, p2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_0

    new-instance v0, Lorg/telegram/messenger/MessagesController$8;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$8;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public reRunUpdateTimerProc()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->updateTimerProc()V

    return-void
.end method

.method public registerForPush(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->registeringForPush:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    if-eqz v0, :cond_2

    sget-object v0, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->registeringForPush:Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;->token_type:I

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_registerDevice;->token:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$86;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/MessagesController$86;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public reloadWebPages(JLjava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController;->reloadingWebpages:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;->message:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v4, Lorg/telegram/messenger/MessagesController$53;

    invoke-direct {v4, p0, v1, p1, p2}, Lorg/telegram/messenger/MessagesController$53;-><init>(Lorg/telegram/messenger/MessagesController;Ljava/lang/String;J)V

    invoke-virtual {v2, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reportSpam(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 5

    const/4 v4, 0x2

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    if-nez p5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "Notifications"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "spam3_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    long-to-int v0, p1

    if-nez v0, :cond_2

    if-eqz p5, :cond_0

    iget-wide v0, p5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;-><init>()V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget v2, p5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reportEncryptedSpam;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget-wide v2, p5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$14;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$14;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;-><init>()V

    if-eqz p4, :cond_4

    iget v1, p4, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :cond_3
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$15;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$15;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_3

    iget v1, p3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reportSpam;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1
.end method

.method public saveGif(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 4

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;-><init>()V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->unsave:Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$39;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$39;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public saveRecentSticker(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 4

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;-><init>()V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->unsave:Z

    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->attached:Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$40;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$40;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public sendBotStart(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->start_param:Ljava/lang/String;

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;->random_id:J

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$76;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$76;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public sendTyping(JII)V
    .locals 9

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->sendingTypings:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    long-to-int v1, p1

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v2, v2

    if-eqz v1, :cond_c

    if-eq v2, v6, :cond_0

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;-><init>()V

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v1, :cond_4

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_0

    :cond_4
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v1, :cond_0

    if-nez p3, :cond_6

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;-><init>()V

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    :cond_5
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/MessagesController$50;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesController$50;-><init>(Lorg/telegram/messenger/MessagesController;IJ)V

    invoke-virtual {v0, v2, v1, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    if-eqz p4, :cond_0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v0, p4}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto/16 :goto_0

    :cond_6
    if-ne p3, v6, :cond_7

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordAudioAction;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordAudioAction;-><init>()V

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    :cond_7
    if-ne p3, v7, :cond_8

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_sendMessageCancelAction;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageCancelAction;-><init>()V

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    :cond_8
    const/4 v1, 0x3

    if-ne p3, v1, :cond_9

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;-><init>()V

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    :cond_9
    const/4 v1, 0x4

    if-ne p3, v1, :cond_a

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction;-><init>()V

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    :cond_a
    const/4 v1, 0x5

    if-ne p3, v1, :cond_b

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction;-><init>()V

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    :cond_b
    const/4 v1, 0x6

    if-ne p3, v1, :cond_5

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGamePlayAction;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGamePlayAction;-><init>()V

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    goto :goto_1

    :cond_c
    if-nez p3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v2, v2

    if-le v2, v6, :cond_0

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v2, :cond_0

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;-><init>()V

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    iput-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_setEncryptedTyping;->typing:Z

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/MessagesController$51;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesController$51;-><init>(Lorg/telegram/messenger/MessagesController;IJ)V

    invoke-virtual {v0, v2, v1, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    if-eqz p4, :cond_0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v0, p4}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto/16 :goto_0
.end method

.method public setLastCreatedDialogId(JZ)V
    .locals 3

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$7;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesController$7;-><init>(Lorg/telegram/messenger/MessagesController;ZJ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sortDialogs(Ljava/util/HashMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->dialogsAll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->dialogsPosh:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->dialogsUnread:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    move v11, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v3, 0x20

    shr-long/2addr v4, v3

    long-to-int v14, v4

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v15, v4

    if-gez v15, :cond_a

    const/4 v3, 0x1

    if-eq v14, v3, :cond_a

    const/4 v3, 0x1

    move v12, v3

    :goto_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-int v4, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v16

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v3, "-"

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/tools/c/b;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v13, v3

    :goto_2
    const-string/jumbo v3, "-"

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_3
    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/tools/c/c;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->toggleMute3(ZJ)V

    :cond_0
    :goto_4
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/tools/c/d;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/tools/c/a;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->dialogsPosh:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_1

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-lez v3, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_read:I

    const/4 v7, 0x0

    iget v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lorg/telegram/messenger/MessagesController;->markDialogAsRead(JIIIZZ)V

    :cond_1
    if-nez v17, :cond_6

    sget-boolean v3, Lorg/telegram/messenger/MessagesController;->IsHiddenMainS:Z

    if-eqz v3, :cond_11

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogsAll:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-lez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogsUnread:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v12, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    :goto_5
    if-nez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_6
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, v16

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_7
    if-eqz v15, :cond_9

    const/4 v3, 0x1

    if-eq v14, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v3

    if-eqz v3, :cond_19

    if-eqz v16, :cond_9

    move-object/from16 v0, v16

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, v16

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-nez v3, :cond_8

    :cond_7
    move-object/from16 v0, v16

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v3, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_8
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_0

    :cond_a
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_1

    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/tools/c/b;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v13, v3

    goto/16 :goto_2

    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto/16 :goto_3

    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/tools/c/c;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->toggleMute3(ZJ)V

    goto/16 :goto_4

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_11
    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogsAll:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-lez v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogsUnread:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v3

    if-nez v3, :cond_14

    if-nez v12, :cond_14

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_16

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    :goto_9
    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_a
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v3

    if-nez v3, :cond_15

    if-eqz v12, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, v16

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_16
    const/4 v3, 0x0

    goto :goto_9

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_19
    if-gez v15, :cond_9

    if-eqz p1, :cond_1a

    if-eqz v16, :cond_1a

    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_8

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_1b
    return-void
.end method

.method public startShortPoll(IZ)V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$93;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesController$93;-><init>(Lorg/telegram/messenger/MessagesController;ZI)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toggleAdminMode(IZ)V
    .locals 3

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;-><init>()V

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;->chat_id:I

    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleChatAdmins;->enabled:Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$77;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/MessagesController$77;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public toggleUserAdmin(IIZ)V
    .locals 3

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;-><init>()V

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;->chat_id:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(I)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    iput-boolean p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatAdmin;->is_admin:Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$78;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$78;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public toogleChannelInvites(IZ)V
    .locals 4

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleInvites;->enabled:Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$72;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$72;-><init>(Lorg/telegram/messenger/MessagesController;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public toogleChannelSignatures(IZ)V
    .locals 4

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleSignatures;->enabled:Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$73;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$73;-><init>(Lorg/telegram/messenger/MessagesController;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public unblockUser(I)V
    .locals 5

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesController$26;

    invoke-direct {v3, p0, v1}, Lorg/telegram/messenger/MessagesController$26;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public unregistedPush()V
    .locals 3

    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;-><init>()V

    sget-object v1, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;->token:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_unregisterDevice;->token_type:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$83;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$83;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_0
    return-void
.end method

.method public updateChannelAbout(ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 4

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editAbout;->about:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$74;

    invoke-direct {v2, p0, p3, p2}, Lorg/telegram/messenger/MessagesController$74;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/lang/String;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0
.end method

.method public updateChannelUserName(ILjava/lang/String;)V
    .locals 4

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->username:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$75;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/messenger/MessagesController$75;-><init>(Lorg/telegram/messenger/MessagesController;ILjava/lang/String;)V

    const/16 v3, 0x40

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public updateConfig(Lorg/telegram/tgnet/TLRPC$TL_config;)V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/MessagesController$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MessagesController$3;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_config;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateInterfaceWithMessages(JLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;Z)V

    return-void
.end method

.method protected updateInterfaceWithMessages(JLjava/util/ArrayList;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    long-to-int v0, p1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    move v5, v0

    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_a

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_5

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    if-gt v6, v7, :cond_5

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-gez v6, :cond_4

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-gez v6, :cond_4

    :cond_3
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    if-lt v6, v7, :cond_5

    :cond_4
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v7, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-le v6, v7, :cond_6

    :cond_5
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v3, :cond_1b

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move-object v3, v0

    :cond_6
    :goto_3
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isNewGif()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-static {v6, v7}, Lorg/telegram/messenger/query/StickersQuery;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;I)V

    :cond_7
    :goto_4
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_5
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v0

    goto/16 :goto_2

    :cond_8
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/query/StickersQuery;->addRecentSticker(ILorg/telegram/tgnet/TLRPC$Document;I)V

    goto :goto_4

    :cond_a
    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/query/MessagesQuery;->loadReplyMessagesForMessages(Ljava/util/ArrayList;J)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-virtual {v0, v1, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-eqz v3, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v1, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    if-eqz v1, :cond_c

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogsPosh:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogsUnread:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogsAll:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_b

    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needReloadRecentDialogsSearch:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    const/4 v5, 0x0

    if-nez v0, :cond_13

    if-nez p4, :cond_19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v2, :cond_d

    if-eqz v0, :cond_0

    :cond_d
    if-eqz v0, :cond_e

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v1, :cond_0

    :cond_e
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    iput-wide p1, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/4 v2, 0x0

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    iget-object v2, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_6
    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v1, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget v0, p0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    const/4 v0, 0x1

    :cond_10
    :goto_7
    if-eqz v0, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    :cond_11
    if-eqz v4, :cond_0

    invoke-static {p1, p2}, Lorg/telegram/messenger/query/SearchQuery;->increasePeerRaiting(J)V

    goto/16 :goto_0

    :cond_12
    const/4 v0, 0x0

    goto :goto_6

    :cond_13
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lez v1, :cond_14

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-lez v1, :cond_14

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-gt v1, v2, :cond_16

    :cond_14
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-gez v1, :cond_15

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-gez v1, :cond_15

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lt v1, v2, :cond_16

    :cond_15
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-ltz v1, :cond_16

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    iget-object v2, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-gt v1, v2, :cond_19

    :cond_16
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_17

    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_17

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-nez p4, :cond_18

    iget-object v1, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    const/4 v0, 0x1

    :goto_8
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v1, :cond_10

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v2, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_18
    move v0, v5

    goto :goto_8

    :cond_19
    move v0, v5

    goto/16 :goto_7

    :cond_1a
    move v0, v4

    goto/16 :goto_5

    :cond_1b
    move-object v3, v0

    goto/16 :goto_3
.end method

.method public updateTimerProc()V
    .locals 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/MessagesController;->checkDeletingTask(Z)Z

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getPauseTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePausedStageQueue:Z

    if-nez v0, :cond_5

    sget-wide v0, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePausedStageQueueTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    sget-wide v0, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePausedStageQueueTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController;->lastStatusUpdateTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xd6d8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->offlineSent:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    iget v0, p0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_1
    invoke-static {}, Lorg/telegram/ui/tools/c/g;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;->offline:Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$43;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$43;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesQueueChannels:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->updatesStartWaitTimeChannels:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x5dc

    add-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "QUEUE CHANNEL "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " UPDATES WAIT TIMEOUT - CHECK QUEUE"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lorg/telegram/messenger/MessagesController;->processChannelsUpdatesQueue(II)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;->offline:Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$44;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$44;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController;->offlineSent:Z

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getPauseTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->statusSettingState:I

    iget v0, p0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;->offline:Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessagesController$45;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$45;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/MessagesController;->statusRequest:I

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x3

    if-ge v0, v1, :cond_9

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getUpdatesStartTime(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_8

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getUpdatesStartTime(I)J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    add-long/2addr v2, v4

    cmp-long v1, v2, v8

    if-gez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " QUEUE UPDATES WAIT TIMEOUT - CHECK QUEUE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/MessagesController;->processUpdatesQueue(II)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToReload:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_f

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController;->lastViewsCheckTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/MessagesController;->lastViewsCheckTime:J

    const/4 v0, 0x0

    move v3, v0

    :goto_3
    const/4 v0, 0x2

    if-ge v3, v0, :cond_f

    if-nez v3, :cond_b

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToSend:Landroid/util/SparseArray;

    move-object v1, v0

    :goto_4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_c

    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->channelViewsToReload:Landroid/util/SparseArray;

    move-object v1, v0

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    move v2, v0

    :goto_6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_e

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;-><init>()V

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->id:Ljava/util/ArrayList;

    if-nez v2, :cond_d

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->increment:Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v6, Lorg/telegram/messenger/MessagesController$46;

    invoke-direct {v6, p0, v4, v5}, Lorg/telegram/messenger/MessagesController$46;-><init>(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;)V

    invoke-virtual {v0, v5, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    goto :goto_5

    :cond_f
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v2, 0x0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v5, v3, -0x1e

    if-ge v1, v5, :cond_1d

    if-nez v2, :cond_1c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    move-object v2, v1

    goto :goto_8

    :cond_10
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_11
    new-instance v0, Lorg/telegram/messenger/MessagesController$47;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$47;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_12
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_13

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController;->needShortPollChannels:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_13

    invoke-direct {p0, v1}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_14
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lorg/telegram/messenger/MessagesController;->lastPrintingStringCount:I

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-eq v0, v1, :cond_1b

    :cond_15
    const/4 v1, 0x0

    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    move v3, v0

    move v2, v1

    :goto_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1a

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v4, 0x0

    move v5, v4

    move v4, v2

    :goto_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_18

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesController$PrintingUser;

    iget-object v6, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGamePlayAction;

    if-eqz v6, :cond_17

    const/16 v6, 0x7530

    :goto_f
    iget-wide v10, v2, Lorg/telegram/messenger/MessagesController$PrintingUser;->lastTime:J

    int-to-long v12, v6

    add-long/2addr v10, v12

    cmp-long v6, v10, v8

    if-gez v6, :cond_16

    const/4 v4, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, -0x1

    :cond_16
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_e

    :cond_17
    const/16 v6, 0x170c

    goto :goto_f

    :cond_18
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->printingUsers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_19
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v2, v4

    goto :goto_d

    :cond_1a
    invoke-direct {p0}, Lorg/telegram/messenger/MessagesController;->updatePrintingStrings()V

    if-eqz v2, :cond_1b

    new-instance v0, Lorg/telegram/messenger/MessagesController$48;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$48;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1b
    return-void

    :cond_1c
    move-object v1, v2

    goto/16 :goto_9

    :cond_1d
    move-object v1, v2

    goto/16 :goto_a
.end method

.method public uploadAndApplyUserAvatar(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 5

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController;->uploadingAvatar:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x1000000

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    :cond_0
    return-void
.end method
