.class public Lorg/telegram/messenger/MessagesStorage;
.super Ljava/lang/Object;
.source "MessagesStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MessagesStorage$Hole;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/MessagesStorage;

.field public static lastDateValue:I

.field public static lastPtsValue:I

.field public static lastQtsValue:I

.field public static lastSecretVersion:I

.field public static lastSeqValue:I

.field public static secretG:I

.field public static secretPBytes:[B


# instance fields
.field private cacheFile:Ljava/io/File;

.field private database:Lorg/telegram/SQLite/SQLiteDatabase;

.field private lastSavedDate:I

.field private lastSavedPts:I

.field private lastSavedQts:I

.field private lastSavedSeq:I

.field private lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

.field private storageQueue:Lorg/telegram/messenger/DispatchQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    sput-object v1, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    sput v0, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    sput-object v1, Lorg/telegram/messenger/MessagesStorage;->Instance:Lorg/telegram/messenger/MessagesStorage;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v1, "storageQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    iput v4, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedSeq:I

    iput v4, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedPts:I

    iput v4, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedDate:I

    iput v4, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedQts:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesStorage;->openDatabase(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MessagesStorage;->fixNotificationSettings()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->formatUserSearchName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChatsInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage;->putDialogsInternal(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;ZZIZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/MessagesStorage;->putMessagesInternal(Ljava/util/ArrayList;ZZIZ)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Integer;III)[J
    .locals 1

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/MessagesStorage;->updateMessageStateAndIdInternal(JLjava/lang/Integer;III)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->updateUsersInternal(Ljava/util/ArrayList;ZZ)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/MessagesStorage;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsReadInternal(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/MessagesStorage;->doneHolesInTable(Ljava/lang/String;JI)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;JII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/MessagesStorage;->closeHolesInTable(Ljava/lang/String;JII)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->fixUnsupportedMedia(Lorg/telegram/tgnet/TLRPC$Message;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MessagesStorage;->cleanupInternal()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->isValidKeyboardToSave(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->putUsersInternal(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->putChatsInternal(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/messenger/MessagesStorage;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedSeq:I

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/MessagesStorage;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedSeq:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/MessagesStorage;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedPts:I

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/MessagesStorage;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedPts:I

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/messenger/MessagesStorage;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedDate:I

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/messenger/MessagesStorage;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedDate:I

    return p1
.end method

.method static synthetic access$602(Lorg/telegram/messenger/MessagesStorage;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedQts:I

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeletedInternal(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessagesInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithReadMessagesInternal(Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-void
.end method

.method public static addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v0, :cond_6

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->channel_id:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->channel_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->channel_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->chat_id:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->chat_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->chat_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    move v1, v2

    :goto_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    if-eqz v1, :cond_9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityMentionName;->user_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    if-eqz v1, :cond_8

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-gez v0, :cond_e

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    return-void
.end method

.method private cleanupInternal()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    iput v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedSeq:I

    iput v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedPts:I

    iput v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedDate:I

    iput v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastSavedQts:I

    sput-object v1, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    sput v0, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->close()V

    iput-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    :cond_1
    return-void
.end method

.method private closeHolesInTable(Ljava/lang/String;JII)V
    .locals 10

    const/4 v0, 0x0

    const/4 v7, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SELECT start, end FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " WHERE uid = %d AND ((end >= %d AND end <= %d) OR (start >= %d AND start <= %d) OR (start >= %d AND end <= %d) OR (start <= %d AND end >= %d))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v2, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    if-ne v2, v4, :cond_0

    if-ne v2, v7, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v5, Lorg/telegram/messenger/MessagesStorage$Hole;

    invoke-direct {v5, p0, v2, v4}, Lorg/telegram/messenger/MessagesStorage$Hole;-><init>(Lorg/telegram/messenger/MessagesStorage;II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    if-eqz v2, :cond_4

    move v1, v0

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessagesStorage$Hole;

    iget v3, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    add-int/lit8 v3, v3, -0x1

    if-lt p5, v3, :cond_3

    iget v3, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    add-int/lit8 v3, v3, 0x1

    if-gt p4, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DELETE FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " WHERE uid = %d AND start = %d AND end = %d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_2
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    iget v3, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    add-int/lit8 v3, v3, -0x1

    if-lt p5, v3, :cond_5

    iget v3, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v3, p4, :cond_2

    :try_start_1
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UPDATE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " SET end = %d WHERE uid = %d AND start = %d AND end = %d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    return-void

    :cond_5
    :try_start_3
    iget v3, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    add-int/lit8 v3, v3, 0x1

    if-gt p4, v3, :cond_6

    iget v3, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eq v3, p5, :cond_2

    :try_start_4
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UPDATE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " SET start = %d WHERE uid = %d AND start = %d AND end = %d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_6
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DELETE FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " WHERE uid = %d AND start = %d AND end = %d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "REPLACE INTO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " VALUES(?, ?, ?)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p2, p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v4, 0x2

    iget v5, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    invoke-virtual {v3, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p2, p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v4, 0x3

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    invoke-virtual {v3, v4, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    :cond_7
    move-object v1, v2

    goto/16 :goto_1
.end method

.method public static createFirstHoles(JLorg/telegram/SQLite/SQLitePreparedStatement;Lorg/telegram/SQLite/SQLitePreparedStatement;I)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    invoke-virtual {p2, v1, p0, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    if-ne p4, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p2, v4, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {p2, v5, p4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    move v3, v2

    :goto_1
    const/4 v0, 0x5

    if-ge v3, v0, :cond_2

    invoke-virtual {p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    invoke-virtual {p3, v1, p0, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    invoke-virtual {p3, v4, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    if-ne p4, v1, :cond_1

    move v0, v1

    :goto_2
    invoke-virtual {p3, v5, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v0, 0x4

    invoke-virtual {p3, v0, p4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    return-void
.end method

.method private doneHolesInTable(Ljava/lang/String;JI)V
    .locals 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-nez p4, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DELETE FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " WHERE uid = %d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "REPLACE INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " VALUES(?, ?, ?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    invoke-virtual {v0, v5, p2, p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DELETE FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " WHERE uid = %d AND start = 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_0
.end method

.method private fixNotificationSettings()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$4;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fixUnsupportedMedia(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 4

    const/16 v3, 0x41

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    aput-byte v3, v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;-><init>()V

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    aput-byte v3, v0, v2

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto :goto_0
.end method

.method private formatUserSearchName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, ";;;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/telegram/messenger/MessagesStorage;
    .locals 2

    sget-object v0, Lorg/telegram/messenger/MessagesStorage;->Instance:Lorg/telegram/messenger/MessagesStorage;

    if-nez v0, :cond_1

    const-class v1, Lorg/telegram/messenger/MessagesStorage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/MessagesStorage;->Instance:Lorg/telegram/messenger/MessagesStorage;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/MessagesStorage;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesStorage;-><init>()V

    sput-object v0, Lorg/telegram/messenger/MessagesStorage;->Instance:Lorg/telegram/messenger/MessagesStorage;

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

.method private getMessageMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I
    .locals 2

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-lez v0, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/16 v1, 0x3c

    if-le v0, v1, :cond_1

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private isValidKeyboardToSave(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->selective:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadPendingTasks()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$7;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$7;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private markMessagesAsDeletedInternal(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x2

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    int-to-long v8, p2

    const/16 v0, 0x20

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2c

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "SELECT uid, data, read_state, out FROM messages WHERE mid IN(%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    :cond_2
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v8

    int-to-long v10, v6

    cmp-long v0, v8, v10

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    if-eqz v0, :cond_3

    if-ne v0, v12, :cond_5

    :cond_3
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    long-to-int v0, v8

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v0, v7, v8}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v7

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    if-eqz v7, :cond_2

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v0, :cond_9

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_7
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Lorg/telegram/messenger/FileLoader;->deleteFiles(Ljava/util/ArrayList;I)V

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "UPDATE dialogs SET unread_count = max(0, ((SELECT unread_count FROM dialogs WHERE did = ?) - ?)) WHERE did = ?"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v6, 0x1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v6, 0x2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v6, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v0, 0x3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v0, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_8
    :try_start_3
    const-string/jumbo v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_1

    :cond_9
    :try_start_4
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_2

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    :cond_b
    :try_start_5
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "DELETE FROM messages WHERE mid IN(%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "DELETE FROM bot_keyboard WHERE mid IN(%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "DELETE FROM messages_seq WHERE mid IN(%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "DELETE FROM media_v2 WHERE mid IN(%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "DELETE FROM media_counts_v2 WHERE 1"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/query/BotQuery;->clearBotKeyboard(JLjava/util/ArrayList;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v0, v2

    goto/16 :goto_5
.end method

.method private markMessagesAsReadInternal(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "UPDATE messages SET read_state = read_state | 1 WHERE uid = %d AND mid > 0 AND mid <= %d AND read_state IN(0,2) AND out = 0"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v9

    const/4 v3, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v3

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "UPDATE messages SET read_state = read_state | 1 WHERE uid = %d AND mid > 0 AND mid <= %d AND read_state IN(0,2) AND out = 1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v3, "UPDATE messages SET read_state = read_state | 1 WHERE uid = ? AND date <= ? AND read_state IN(0,2) AND out = 1"

    invoke-virtual {v1, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private putChatsInternal(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "REPLACE INTO chats VALUES(?, ?, ?)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "SELECT data FROM chats WHERE uid = %d"

    new-array v7, v9, [Ljava/lang/Object;

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v5, v3}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v3

    const/4 v7, 0x0

    invoke-static {v6, v3, v7}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    invoke-virtual {v6}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    if-eqz v3, :cond_2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    iput-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iput-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    iput-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    iput-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v3, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v0, v3

    :cond_2
    :goto_3
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_3
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    new-instance v3, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$Chat;->getObjectSize()I

    move-result v5

    invoke-direct {v3, v5}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    invoke-virtual {v0, v3}, Lorg/telegram/tgnet/TLRPC$Chat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v4, v9, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v10, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    :goto_4
    const/4 v0, 0x3

    invoke-virtual {v4, v0, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_4
    const/4 v6, 0x0

    :try_start_1
    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v6, v6, -0x41

    iput v6, v3, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    const-string/jumbo v0, ""

    invoke-virtual {v4, v10, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto/16 :goto_0
.end method

.method private putDialogsInternal(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V
    .locals 20

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v3, "REPLACE INTO messages VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, NULL, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v3, "REPLACE INTO dialogs VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v3, "REPLACE INTO media_v2 VALUES(?, ?, ?, ?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v3, "REPLACE INTO dialog_settings VALUES(?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v3, "REPLACE INTO messages_holes VALUES(?, ?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v3, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v15

    const/4 v2, 0x0

    move v8, v2

    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_e

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v3, :cond_3

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v4, v3

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    :cond_1
    :goto_2
    if-eqz p2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SELECT did FROM dialogs WHERE did = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    if-eqz v4, :cond_5

    :cond_2
    :goto_3
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_1

    :cond_3
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v3, :cond_4

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v3, v3

    int-to-long v4, v3

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    return-void

    :cond_4
    :try_start_1
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v3, v3

    int-to-long v4, v3

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_9

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/telegram/messenger/MessagesStorage;->isValidKeyboardToSave(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7, v3}, Lorg/telegram/messenger/query/BotQuery;->putBotKeyboard(JLorg/telegram/tgnet/TLRPC$Message;)V

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/telegram/messenger/MessagesStorage;->fixUnsupportedMedia(Lorg/telegram/tgnet/TLRPC$Message;)V

    new-instance v16, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$Message;->getObjectSize()I

    move-result v5

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v6, v5

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v5, :cond_7

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const/16 v5, 0x20

    shl-long v18, v18, v5

    or-long v6, v6, v18

    :cond_7
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v5, 0x1

    invoke-virtual {v10, v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v5, 0x2

    iget-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v10, v5, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v5, 0x3

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v10, v5, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v5, 0x4

    iget v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v10, v5, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v5, 0x5

    iget v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v10, v5, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v5, 0x6

    move-object/from16 v0, v16

    invoke-virtual {v10, v5, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/16 v17, 0x7

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    :goto_5
    move/from16 v0, v17

    invoke-virtual {v10, v0, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v5, 0x8

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v5, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v17, 0x9

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_c

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    :goto_6
    move/from16 v0, v17

    invoke-virtual {v10, v0, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v5, 0xa

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v5, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-static {v3}, Lorg/telegram/messenger/query/SharedMediaQuery;->canAddMessageToMedia(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v5, 0x1

    invoke-virtual {v12, v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v5, 0x2

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v12, v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v5, 0x3

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {v12, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v5, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v6

    invoke-virtual {v12, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v5, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v12, v5, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    :cond_8
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v6, v7, v14, v15, v3}, Lorg/telegram/messenger/MessagesStorage;->createFirstHoles(JLorg/telegram/SQLite/SQLitePreparedStatement;Lorg/telegram/SQLite/SQLitePreparedStatement;I)V

    :cond_9
    move v3, v4

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    int-to-long v4, v4

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v6, :cond_a

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v6, v6

    const/16 v16, 0x20

    shl-long v6, v6, v16

    or-long/2addr v4, v6

    :cond_a
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v6, 0x1

    iget-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v11, v6, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v6, 0x2

    invoke-virtual {v11, v6, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v3, 0x3

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    invoke-virtual {v11, v3, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v3, 0x4

    invoke-virtual {v11, v3, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v3, 0x5

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    invoke-virtual {v11, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v3, 0x6

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    invoke-virtual {v11, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v3, 0x7

    const-wide/16 v4, 0x0

    invoke-virtual {v11, v3, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v3, 0x9

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    invoke-virtual {v11, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v3, 0xb

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    invoke-virtual {v11, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    if-eqz v3, :cond_2

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v3, 0x1

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v13, v3, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v3, 0x2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    :goto_7
    invoke-virtual {v13, v3, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto/16 :goto_3

    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_d
    const/4 v2, 0x0

    goto :goto_7

    :cond_e
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-virtual {v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_f
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersInternal(Ljava/util/ArrayList;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/MessagesStorage;->putChatsInternal(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method private putMessagesInternal(Ljava/util/ArrayList;ZZIZ)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;ZZIZ)V"
        }
    .end annotation

    if-eqz p5, :cond_4

    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v5, :cond_2

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v6, v5

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    :cond_0
    :goto_0
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SELECT last_mid FROM dialogs WHERE did = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_46

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    :goto_1
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    if-eqz v4, :cond_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v5, :cond_3

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v5, v5

    int-to-long v6, v5

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v5, v5

    int-to-long v6, v5

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    :cond_5
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v7, "REPLACE INTO messages VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, NULL, ?)"

    invoke-virtual {v4, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v21

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v10, "REPLACE INTO randoms VALUES(?, ?)"

    invoke-virtual {v4, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v10, "REPLACE INTO download_queue VALUES(?, ?, ?, ?)"

    invoke-virtual {v4, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v10, "REPLACE INTO webpage_pending VALUES(?, ?)"

    invoke-virtual {v4, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v24

    const/4 v4, 0x0

    move v10, v4

    move-object v11, v5

    move-object v12, v8

    move-object v13, v9

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_14

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    move-object v5, v0

    iget v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v8, v4

    iget-wide v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v4, v26, v28

    if-nez v4, :cond_6

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v4, :cond_11

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v0, v4

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    iput-wide v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    :cond_6
    :goto_4
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_7

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v0, v4

    move-wide/from16 v26, v0

    const/16 v4, 0x20

    shl-long v26, v26, v4

    or-long v8, v8, v26

    :cond_7
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isUnread(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-wide v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "SELECT inbox_max FROM dialogs WHERE did = "

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-wide v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_5
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    iget-wide v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v17, v0

    if-ltz v17, :cond_9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v4, v0, :cond_b

    :cond_9
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_a

    const-string/jumbo v4, ","

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-static {v5}, Lorg/telegram/messenger/query/SharedMediaQuery;->canAddMessageToMedia(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_e

    if-nez v12, :cond_c

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    :cond_c
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_d

    const-string/jumbo v4, ","

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v5}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    move-object v8, v11

    move-object v9, v12

    move-object v11, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/telegram/messenger/MessagesStorage;->isValidKeyboardToSave(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-wide v12, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v4, :cond_f

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v12, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v4, v12, :cond_10

    :cond_f
    iget-wide v12, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move-object v12, v9

    move-object v13, v11

    move-object v11, v8

    goto/16 :goto_3

    :cond_11
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_12

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    iput-wide v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_4

    :cond_12
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    iput-wide v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_4

    :cond_13
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_5

    :cond_14
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/BotQuery;->putBotKeyboard(JLorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_6

    :cond_15
    if-eqz v12, :cond_45

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SELECT mid FROM media_v2 WHERE mid IN("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v4

    :goto_7
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_16
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    if-nez v6, :cond_18

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v6

    move-object v6, v9

    :goto_9
    if-nez v5, :cond_17

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_17
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_18
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    goto :goto_9

    :cond_19
    move-object/from16 v17, v8

    :goto_a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SELECT mid FROM messages WHERE mid IN("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v4

    :goto_b
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_1a
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_1b

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_1b
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_1c
    const/4 v9, 0x0

    const/4 v4, 0x0

    move v10, v4

    move-object v8, v7

    :goto_d
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_2d

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/MessagesStorage;->fixUnsupportedMedia(Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v6, v5

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    if-eqz v5, :cond_1d

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    int-to-long v6, v5

    :cond_1d
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v5, :cond_1e

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v12, v5

    const/16 v5, 0x20

    shl-long/2addr v12, v5

    or-long/2addr v6, v12

    :cond_1e
    new-instance v12, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v4}, Lorg/telegram/tgnet/TLRPC$Message;->getObjectSize()I

    move-result v5

    invoke-direct {v12, v5}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    invoke-virtual {v4, v12}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const/4 v5, 0x1

    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v11, :cond_1f

    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v11, v11, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    if-eqz v11, :cond_1f

    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v11, v11, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-nez v11, :cond_1f

    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v11, v11, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-nez v11, :cond_1f

    const/4 v5, 0x0

    :cond_1f
    if-eqz v5, :cond_22

    iget-wide v14, v4, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v5, :cond_21

    iget v11, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v13, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-gt v11, v13, :cond_21

    iget v11, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lez v11, :cond_20

    iget v11, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lez v11, :cond_20

    iget v11, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v13, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gt v11, v13, :cond_21

    :cond_20
    iget v11, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v11, :cond_22

    iget v11, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v11, :cond_22

    iget v11, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v11, v5, :cond_22

    :cond_21
    iget-wide v14, v4, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v5, 0x2

    iget-wide v14, v4, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v5, 0x3

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v11

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v5, 0x4

    iget v11, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v5, 0x5

    iget v11, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v5, 0x6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/4 v11, 0x7

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v5, 0x1

    :goto_e
    move-object/from16 v0, v21

    invoke-virtual {v0, v11, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v5, 0x8

    iget v11, v4, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_28

    const/16 v5, 0x9

    iget v11, v4, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    :goto_f
    const/16 v5, 0xa

    const/4 v11, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    iget-wide v14, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v26, 0x0

    cmp-long v5, v14, v26

    if-eqz v5, :cond_23

    invoke-virtual/range {v22 .. v22}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v5, 0x1

    iget-wide v14, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v5, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    invoke-virtual/range {v22 .. v22}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    :cond_23
    invoke-static {v4}, Lorg/telegram/messenger/query/SharedMediaQuery;->canAddMessageToMedia(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v5

    if-eqz v5, :cond_42

    if-nez v8, :cond_41

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v8, "REPLACE INTO media_v2 VALUES(?, ?, ?, ?, ?)"

    invoke-virtual {v5, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    :goto_10
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v5, 0x1

    invoke-virtual {v11, v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v5, 0x2

    iget-wide v14, v4, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v11, v5, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v5, 0x3

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {v11, v5, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v5, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v8

    invoke-virtual {v11, v5, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v5, 0x5

    invoke-virtual {v11, v5, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    :goto_11
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v5, :cond_24

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v5, 0x1

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-wide v14, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v5, 0x2

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    :cond_24
    invoke-virtual {v12}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v5, :cond_25

    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v5, :cond_43

    :cond_25
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v6

    add-int/lit16 v6, v6, -0xe10

    if-lt v5, v6, :cond_43

    if-eqz p4, :cond_43

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v5, :cond_26

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v5, :cond_43

    :cond_26
    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v12

    if-eqz v12, :cond_29

    and-int/lit8 v12, p4, 0x2

    if-eqz v12, :cond_44

    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    const/high16 v13, 0x500000

    if-ge v12, v13, :cond_44

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const/4 v8, 0x2

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    const-string/jumbo v12, ""

    iput-object v12, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v12, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-wide v12, v6

    move-object v6, v5

    :goto_12
    if-eqz v6, :cond_43

    or-int v5, v9, v8

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    new-instance v7, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v6}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getObjectSize()I

    move-result v9

    invoke-direct {v7, v9}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    invoke-virtual {v6, v7}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const/4 v6, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v6, 0x2

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v6, 0x3

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v4, 0x4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v7}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    move v4, v5

    :goto_13
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    move v9, v4

    move-object v8, v11

    goto/16 :goto_d

    :cond_27
    const/4 v5, 0x0

    goto/16 :goto_e

    :cond_28
    const/16 v5, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/MessagesStorage;->getMessageMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v11

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    goto/16 :goto_f

    :cond_29
    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v12, v12, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v12, :cond_2b

    and-int/lit8 v12, p4, 0x1

    if-eqz v12, :cond_44

    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v13

    invoke-static {v12, v13}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v12

    if-eqz v12, :cond_2a

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    const/4 v8, 0x1

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    const-string/jumbo v12, ""

    iput-object v12, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iput-object v12, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    :cond_2a
    move-wide v12, v6

    move-object v6, v5

    goto :goto_12

    :cond_2b
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v12

    if-eqz v12, :cond_2c

    and-int/lit8 v12, p4, 0x4

    if-eqz v12, :cond_44

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const/4 v8, 0x4

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    const-string/jumbo v12, ""

    iput-object v12, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v12, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-wide v12, v6

    move-object v6, v5

    goto/16 :goto_12

    :cond_2c
    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v12, v12, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v12, :cond_44

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isMusicMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v12

    if-nez v12, :cond_44

    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v12}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v12

    if-nez v12, :cond_44

    and-int/lit8 v12, p4, 0x8

    if-eqz v12, :cond_44

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const/16 v8, 0x8

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    const-string/jumbo v12, ""

    iput-object v12, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v12, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-wide v12, v6

    move-object v6, v5

    goto/16 :goto_12

    :cond_2d
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    if-eqz v8, :cond_2e

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_2e
    invoke-virtual/range {v22 .. v22}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v5, "REPLACE INTO dialogs VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v20

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_2f
    :goto_14
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-eqz v5, :cond_2f

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x0

    if-eqz v5, :cond_40

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v16, v6

    :goto_15
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SELECT date, unread_count, pts, last_mid, inbox_max, outbox_max, pinned FROM dialogs WHERE did = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v22

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    if-eqz v16, :cond_33

    const/4 v10, 0x1

    :goto_16
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v22 .. v22}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v14

    if-eqz v14, :cond_34

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    const/4 v6, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v11

    const/4 v6, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v10

    const/4 v6, 0x3

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v12

    const/4 v6, 0x4

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v8

    const/4 v6, 0x5

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    const/4 v6, 0x6

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    move v14, v11

    move v15, v13

    move v13, v10

    move v11, v7

    move v10, v6

    move v7, v12

    move v12, v8

    :goto_17
    invoke-virtual/range {v22 .. v22}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_36

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v8, v6

    :goto_18
    if-eqz v5, :cond_37

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v6, v6

    :goto_19
    if-eqz v5, :cond_30

    iget v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    move/from16 v22, v0

    if-eqz v22, :cond_30

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    int-to-long v6, v6

    :cond_30
    if-eqz v16, :cond_31

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const/16 v16, 0x20

    shl-long v22, v22, v16

    or-long v6, v6, v22

    :cond_31
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/16 v16, 0x1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    if-eqz v5, :cond_38

    if-eqz p3, :cond_32

    if-nez v15, :cond_38

    :cond_32
    const/4 v4, 0x2

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    :goto_1a
    const/4 v4, 0x3

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v14

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v4, 0x4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v4, 0x5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v4, 0x6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v4, 0x7

    const-wide/16 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v4, 0x9

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v4, 0xb

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto/16 :goto_14

    :cond_33
    const/4 v10, 0x0

    goto/16 :goto_16

    :cond_34
    if-eqz v16, :cond_35

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/telegram/messenger/MessagesController;->checkChannelInviter(I)V

    :cond_35
    move v14, v11

    move v15, v13

    move v13, v10

    move v11, v7

    move v10, v6

    move v7, v12

    move v12, v8

    goto/16 :goto_17

    :cond_36
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v6

    goto/16 :goto_18

    :cond_37
    int-to-long v6, v7

    goto/16 :goto_19

    :cond_38
    const/4 v4, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    goto :goto_1a

    :cond_39
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    if-eqz v17, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v5, "REPLACE INTO media_counts_v2 VALUES(?, ?, ?)"

    invoke-virtual {v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3b
    :goto_1b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    long-to-int v6, v12

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v15, "SELECT count FROM media_counts_v2 WHERE uid = %d AND type = %d LIMIT 1"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v5, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v11, v14, v15}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v14

    if-eqz v14, :cond_3c

    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    :cond_3c
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    const/4 v11, -0x1

    if-eq v6, v11, :cond_3b

    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v6

    const/4 v6, 0x1

    invoke-virtual {v7, v6, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v6, 0x2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v6, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v6, 0x3

    invoke-virtual {v7, v6, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto :goto_1b

    :cond_3d
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_3e
    if-eqz p2, :cond_3f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    :cond_3f
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesController;->processDialogsUpdateRead(Ljava/util/HashMap;)V

    if-eqz v9, :cond_1

    new-instance v4, Lorg/telegram/messenger/MessagesStorage$69;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v9}, Lorg/telegram/messenger/MessagesStorage$69;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_40
    move/from16 v16, v6

    goto/16 :goto_15

    :cond_41
    move-object v11, v8

    goto/16 :goto_10

    :cond_42
    move-object v11, v8

    goto/16 :goto_11

    :cond_43
    move v4, v9

    goto/16 :goto_13

    :cond_44
    move-wide v12, v6

    move-object v6, v5

    goto/16 :goto_12

    :cond_45
    move-object/from16 v17, v6

    goto/16 :goto_a

    :cond_46
    move v4, v5

    goto/16 :goto_1
.end method

.method private putUsersAndChatsInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MessagesStorage;->putUsersInternal(Ljava/util/ArrayList;)V

    invoke-direct {p0, p2}, Lorg/telegram/messenger/MessagesStorage;->putChatsInternal(Ljava/util/ArrayList;)V

    if-eqz p3, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private putUsersInternal(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "REPLACE INTO users VALUES(?, ?, ?, ?)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "SELECT data FROM users WHERE uid = %d"

    new-array v7, v9, [Ljava/lang/Object;

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v5, v3}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v3

    const/4 v7, 0x0

    invoke-static {v6, v3, v7}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-virtual {v6}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    if-eqz v3, :cond_2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v3, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    :goto_2
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v6, :cond_6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v3, Lorg/telegram/tgnet/TLRPC$User;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-object v0, v3

    :cond_2
    :goto_4
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_3
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    new-instance v3, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$User;->getObjectSize()I

    move-result v5

    invoke-direct {v3, v5}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    invoke-virtual {v0, v3}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v4, v9, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v5, 0x2

    invoke-direct {p0, v0}, Lorg/telegram/messenger/MessagesStorage;->formatUserSearchName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v5, :cond_9

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_userStatusRecently;

    if-eqz v5, :cond_7

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v6, -0x64

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    :cond_4
    :goto_5
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-virtual {v4, v10, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    :goto_6
    const/4 v0, 0x4

    invoke-virtual {v4, v0, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_5
    const/4 v6, 0x0

    :try_start_1
    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v6, v6, -0x9

    iput v6, v3, Lorg/telegram/tgnet/TLRPC$User;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :try_start_2
    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v6, v6, -0x21

    iput v6, v3, Lorg/telegram/tgnet/TLRPC$User;->flags:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_7
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastWeek;

    if-eqz v5, :cond_8

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v6, -0x65

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_5

    :cond_8
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastMonth;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v6, -0x66

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_5

    :cond_9
    invoke-virtual {v4, v10, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    goto :goto_6

    :cond_a
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto/16 :goto_0
.end method

.method private updateDbToLastVersion(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$1;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateDialogsWithDeletedMessagesInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 12
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
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v2}, Lorg/telegram/messenger/DispatchQueue;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "wrong db thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p3, :cond_1

    neg-int v0, p3

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "UPDATE dialogs SET last_mid = (SELECT mid FROM messages WHERE uid = ? AND date = (SELECT MAX(date) FROM messages WHERE uid = ?)) WHERE did = ?"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    move-object v2, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v0, 0x2

    invoke-virtual {v2, v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    const-string/jumbo v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "SELECT did FROM dialogs WHERE last_mid IN(%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "UPDATE dialogs SET last_mid = (SELECT mid FROM messages WHERE uid = ? AND date = (SELECT MAX(date) FROM messages WHERE uid = ? AND date != 0)) WHERE did = ?"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    :goto_4
    if-eqz p2, :cond_7

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_6
    neg-int v0, p3

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    const-string/jumbo v0, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "SELECT d.did, d.last_mid, d.unread_count, d.date, m.data, m.read_state, m.mid, m.send_state, m.date, d.pts, d.inbox_max, d.outbox_max, d.pinned FROM dialogs as d LEFT JOIN messages as m ON d.last_mid = m.mid WHERE d.did IN(%s)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    :cond_8
    :goto_6
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v8

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    if-nez p3, :cond_b

    const/4 v0, 0x0

    :goto_7
    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iget v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v0, v8, v9}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v8

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    invoke-static {v8, v0}, Lorg/telegram/messenger/MessageObject;->setUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;I)V

    const/4 v0, 0x6

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    if-eqz v0, :cond_9

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    :cond_9
    iget-wide v10, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iput-wide v10, v8, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_a
    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v0, v8

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v7, 0x20

    shr-long/2addr v8, v7

    long-to-int v7, v8

    if-eqz v0, :cond_f

    const/4 v8, 0x1

    if-ne v7, v8, :cond_d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_b
    const/4 v0, 0x1

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    goto :goto_8

    :cond_d
    if-lez v0, :cond_e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_e
    neg-int v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_f
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_10
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, ","

    invoke-static {v0, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_11
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, ","

    invoke-static {v0, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v4}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_12
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v3}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_13
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_14
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->processDialogsUpdate(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private updateDialogsWithReadMessagesInternal(Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "SELECT uid, read_state, out FROM messages WHERE mid IN(%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_4
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "UPDATE dialogs SET unread_count = ? WHERE did = ?"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v5, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v1, 0x2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v1, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_7

    move v2, v1

    :goto_3
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "SELECT COUNT(mid) FROM messages WHERE uid = %d AND mid > %d AND read_state IN(0,2) AND out = 0"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v5, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    int-to-long v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v5, "UPDATE dialogs SET inbox_max = max((SELECT inbox_max FROM dialogs WHERE did = ?), ?) WHERE did = ?"

    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v5, 0x1

    int-to-long v8, v4

    invoke-virtual {v0, v5, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v5, 0x2

    long-to-int v6, v6

    invoke-virtual {v0, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v5, 0x3

    int-to-long v6, v4

    invoke-virtual {v0, v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "UPDATE dialogs SET outbox_max = max((SELECT outbox_max FROM dialogs WHERE did = ?), ?) WHERE did = ?"

    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v6, 0x1

    int-to-long v8, v2

    invoke-virtual {v0, v6, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v6, 0x2

    long-to-int v4, v4

    invoke-virtual {v0, v6, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v4, 0x3

    int-to-long v6, v2

    invoke-virtual {v0, v4, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    :cond_9
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->processDialogsUpdateRead(Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private updateMessageStateAndIdInternal(JLjava/lang/Integer;III)[J
    .locals 17

    const/4 v2, 0x0

    move/from16 v0, p4

    int-to-long v4, v0

    if-nez p3, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT mid FROM randoms WHERE random_id = %d LIMIT 1"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    move-result-object p3

    :cond_0
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    move-object v2, v3

    :goto_0
    if-nez p3, :cond_2

    const/4 v2, 0x0

    :goto_1
    return-object v2

    :catch_0
    move-exception v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    :goto_2
    :try_start_2
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    move-object v2, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    :goto_3
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_1
    throw v2

    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    if-eqz p6, :cond_3

    move/from16 v0, p6

    int-to-long v8, v0

    const/16 v3, 0x20

    shl-long/2addr v8, v3

    or-long/2addr v6, v8

    move/from16 v0, p6

    int-to-long v8, v0

    const/16 v3, 0x20

    shl-long/2addr v8, v3

    or-long/2addr v4, v8

    :cond_3
    const-wide/16 v8, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v11, "SELECT uid FROM messages WHERE mid = %d LIMIT 1"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v3, v10, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    :try_start_4
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    move-result-wide v8

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_5
    :goto_4
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    :goto_5
    :try_start_5
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_4

    :catchall_1
    move-exception v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    :goto_6
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_6
    throw v2

    :cond_7
    cmp-long v2, v6, v4

    if-nez v2, :cond_a

    if-eqz p5, :cond_a

    const/4 v3, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v6, "UPDATE messages SET send_state = 0, date = ? WHERE mid = ?"

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    const/4 v2, 0x1

    move/from16 v0, p5

    invoke-virtual {v3, v2, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v2, 0x2

    invoke-virtual {v3, v2, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_8
    :goto_7
    const/4 v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide v8, v2, v3

    const/4 v3, 0x1

    move/from16 v0, p4

    int-to-long v4, v0

    aput-wide v4, v2, v3

    goto/16 :goto_1

    :catch_2
    move-exception v2

    :try_start_7
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_7

    :catchall_2
    move-exception v2

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_9
    throw v2

    :cond_a
    const/4 v2, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v10, "UPDATE messages SET mid = ?, send_state = 0 WHERE mid = ?"

    invoke-virtual {v3, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-result-object v2

    const/4 v3, 0x1

    :try_start_9
    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/4 v2, 0x0

    :cond_b
    :goto_8
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v10, "UPDATE media_v2 SET mid = ? WHERE mid = ?"

    invoke-virtual {v3, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/4 v2, 0x0

    move-object v3, v2

    :goto_9
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v10, "UPDATE dialogs SET last_mid = ? WHERE last_mid = ?"

    invoke-virtual {v2, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    const/4 v2, 0x1

    invoke-virtual {v3, v2, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v2, 0x2

    invoke-virtual {v3, v2, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_c
    :goto_a
    const/4 v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide v8, v2, v3

    const/4 v3, 0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    aput-wide v4, v2, v3

    goto/16 :goto_1

    :catch_3
    move-exception v3

    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v11, "DELETE FROM messages WHERE mid = %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v11, "DELETE FROM messages_seq WHERE mid = %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :goto_b
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/4 v2, 0x0

    goto/16 :goto_8

    :catch_4
    move-exception v3

    :try_start_d
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_b

    :catchall_3
    move-exception v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    :goto_c
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_d
    throw v2

    :catch_5
    move-exception v3

    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v11, "DELETE FROM media_v2 WHERE mid = %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :goto_d
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const/4 v2, 0x0

    move-object v3, v2

    goto/16 :goto_9

    :catch_6
    move-exception v3

    :try_start_f
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_d

    :catchall_4
    move-exception v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_e
    throw v2

    :catch_7
    move-exception v2

    :try_start_10
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto/16 :goto_a

    :catchall_5
    move-exception v2

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_f
    throw v2

    :catchall_6
    move-exception v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    goto :goto_c

    :catchall_7
    move-exception v2

    goto/16 :goto_6

    :catch_8
    move-exception v2

    goto/16 :goto_5

    :catchall_8
    move-exception v2

    goto/16 :goto_3

    :catch_9
    move-exception v2

    goto/16 :goto_2

    :cond_10
    move-object v3, v2

    goto/16 :goto_9

    :cond_11
    move-object v2, v3

    goto/16 :goto_0
.end method

.method private updateUsersInternal(Ljava/util/ArrayList;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v2}, Lorg/telegram/messenger/DispatchQueue;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "wrong db thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_5

    if-eqz p3, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "UPDATE users SET status = ? WHERE uid = ?"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-virtual {v1, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    :goto_1
    const/4 v3, 0x2

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v1, v3, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    if-eqz p3, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_8

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v5, :cond_a

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isContact(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_9
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    goto :goto_4

    :cond_a
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v5, :cond_b

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    goto :goto_4

    :cond_b
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    goto :goto_4

    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_d

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    :cond_d
    invoke-direct {p0, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersInternal(Ljava/util/ArrayList;)V

    if-eqz p3, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method


# virtual methods
.method public addRecentLocalFile(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-nez p3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$14;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesStorage$14;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public applyPhoneBookUpdates(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$42;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$42;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public checkMessageId(JI)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v0, 0x1

    new-array v5, v0, [Z

    new-instance v6, Ljava/util/concurrent/Semaphore;

    invoke-direct {v6, v8}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$48;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage$48;-><init>(Lorg/telegram/messenger/MessagesStorage;JI[ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    aget-boolean v0, v5, v8

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public cleanup(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->cleanupQueue()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$2;-><init>(Lorg/telegram/messenger/MessagesStorage;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearDownloadQueue(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$64;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$64;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearUserPhoto(IJ)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$25;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$25;-><init>(Lorg/telegram/messenger/MessagesStorage;IJ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearUserPhotos(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$24;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$24;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearWebRecent(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$15;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$15;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public closeHolesInMedia(JIII)V
    .locals 9

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-gez p5, :cond_4

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "SELECT type, start, end FROM media_holes_v2 WHERE uid = %d AND type >= 0 AND ((end >= %d AND end <= %d) OR (start >= %d AND start <= %d) OR (start >= %d AND end <= %d) OR (start <= %d AND end >= %d))"

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    :cond_0
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    if-ne v4, v5, :cond_2

    if-eq v4, v7, :cond_0

    :cond_2
    new-instance v6, Lorg/telegram/messenger/MessagesStorage$Hole;

    invoke-direct {v6, p0, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage$Hole;-><init>(Lorg/telegram/messenger/MessagesStorage;III)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "SELECT type, start, end FROM media_holes_v2 WHERE uid = %d AND type = %d AND ((end >= %d AND end <= %d) OR (start >= %d AND start <= %d) OR (start >= %d AND end <= %d) OR (start <= %d AND end >= %d))"

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessagesStorage$Hole;

    iget v3, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    add-int/lit8 v3, v3, -0x1

    if-lt p4, v3, :cond_7

    iget v3, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    add-int/lit8 v3, v3, 0x1

    if-gt p3, v3, :cond_7

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "DELETE FROM media_holes_v2 WHERE uid = %d AND type = %d AND start = %d AND end = %d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_6
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_7
    iget v3, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    add-int/lit8 v3, v3, -0x1

    if-lt p4, v3, :cond_8

    iget v3, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eq v3, p3, :cond_6

    :try_start_2
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "UPDATE media_holes_v2 SET end = %d WHERE uid = %d AND type = %d AND start = %d AND end = %d"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget v8, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    iget v3, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    add-int/lit8 v3, v3, 0x1

    if-gt p3, v3, :cond_9

    iget v3, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eq v3, p4, :cond_6

    :try_start_4
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "UPDATE media_holes_v2 SET start = %d WHERE uid = %d AND type = %d AND start = %d AND end = %d"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget v8, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_9
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "DELETE FROM media_holes_v2 WHERE uid = %d AND type = %d AND start = %d AND end = %d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget v8, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v4, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v4, 0x2

    iget v5, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    invoke-virtual {v3, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v4, 0x3

    iget v5, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    invoke-virtual {v3, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v4, 0x2

    iget v5, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    invoke-virtual {v3, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v4, 0x4

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    invoke-virtual {v3, v4, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3
.end method

.method public commitTransaction(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$51;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$51;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J
    .locals 4

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MessagesStorage$5;

    invoke-direct {v3, p0, v0, v1, p1}, Lorg/telegram/messenger/MessagesStorage$5;-><init>(Lorg/telegram/messenger/MessagesStorage;JLorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public createTaskForSecretChat(IIIILjava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$28;

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p4

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage$28;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;IIII)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteBlockedUser(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$19;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$19;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteContacts(Ljava/util/ArrayList;)V
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

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$41;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$41;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public deleteDialog(JI)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$22;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesStorage$22;-><init>(Lorg/telegram/messenger/MessagesStorage;IJ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteUserChannelHistory(II)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$21;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$21;-><init>(Lorg/telegram/messenger/MessagesStorage;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public doneHolesInMedia(JII)V
    .locals 11

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v1, -0x1

    if-ne p4, v1, :cond_2

    if-nez p3, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "DELETE FROM media_holes_v2 WHERE uid = %d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v2, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    invoke-virtual {v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    invoke-virtual {v1, v6, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    invoke-virtual {v1, v7, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v1, v8, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v1, v9, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "DELETE FROM media_holes_v2 WHERE uid = %d AND start = 0"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :goto_2
    return-void

    :cond_2
    if-nez p3, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "DELETE FROM media_holes_v2 WHERE uid = %d AND type = %d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :goto_3
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    invoke-virtual {v0, v6, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    invoke-virtual {v0, v7, p4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v0, v8, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v0, v9, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "DELETE FROM media_holes_v2 WHERE uid = %d AND type = %d AND start = 0"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_3
.end method

.method public getBlockedUsers()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$18;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$18;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBotCache(Ljava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesStorage$33;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$33;-><init>(Lorg/telegram/messenger/MessagesStorage;ILjava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getCachedPhoneBook()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$45;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$45;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getChannelPtsSync(I)I
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesStorage$86;

    invoke-direct {v3, p0, p1, v1, v0}, Lorg/telegram/messenger/MessagesStorage$86;-><init>(Lorg/telegram/messenger/MessagesStorage;I[Ljava/lang/Integer;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getChat(I)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getChatSync(I)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesStorage$88;

    invoke-direct {v3, p0, v1, p1, v0}, Lorg/telegram/messenger/MessagesStorage$88;-><init>(Lorg/telegram/messenger/MessagesStorage;[Lorg/telegram/tgnet/TLRPC$Chat;ILjava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    aget-object v0, v1, v4

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "SELECT data FROM chats WHERE uid IN(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    if-eqz v2, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_0
.end method

.method public getContacts()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$46;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$46;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    return-object v0
.end method

.method public getDialogPhotos(IIIJI)V
    .locals 10

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$23;

    move-object v1, p0

    move-wide v2, p4

    move v4, p1

    move v5, p3

    move v6, p2

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagesStorage$23;-><init>(Lorg/telegram/messenger/MessagesStorage;JIIII)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDialogReadMax(ZJ)I
    .locals 10

    const/4 v8, 0x0

    new-instance v7, Ljava/util/concurrent/Semaphore;

    invoke-direct {v7, v8}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$85;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/MessagesStorage$85;-><init>(Lorg/telegram/messenger/MessagesStorage;ZJ[Ljava/lang/Integer;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    aget-object v0, v6, v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getDialogs(II)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$81;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$81;-><init>(Lorg/telegram/messenger/MessagesStorage;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDownloadQueue(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$65;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$65;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getEncryptedChat(I)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getEncryptedChat(ILjava/util/concurrent/Semaphore;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Semaphore;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$60;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/telegram/messenger/MessagesStorage$60;-><init>(Lorg/telegram/messenger/MessagesStorage;ILjava/util/ArrayList;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getEncryptedChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "SELECT data, user, g, authkey, ttl, layer, seq_in, seq_out, use_count, exchange_id, key_date, fprint, fauthkey, khash, in_seq_no, admin_id FROM enc_chats WHERE uid IN(%s)"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    if-eqz p3, :cond_3

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    shr-int/lit8 v3, v0, 0x10

    int-to-short v3, v3

    iput-short v3, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    int-to-short v0, v0

    iput-short v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    if-eqz v0, :cond_4

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    :cond_4
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto/16 :goto_0
.end method

.method public getMessages(JIIIIIIZI)V
    .locals 13

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$49;

    move-object v2, p0

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p9

    move-wide v6, p1

    move/from16 v8, p8

    move/from16 v9, p6

    move/from16 v10, p5

    move/from16 v11, p7

    move/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lorg/telegram/messenger/MessagesStorage$49;-><init>(Lorg/telegram/messenger/MessagesStorage;IIZJIIIII)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getNewTask(Ljava/util/ArrayList;)V
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

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$27;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$27;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "attheme"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    new-instance v5, Ljava/util/concurrent/Semaphore;

    invoke-direct {v5, v8}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$52;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$52;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLObject;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move-object v0, v6

    goto :goto_0
.end method

.method public getStorageQueue()Lorg/telegram/messenger/DispatchQueue;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method public getUnsentMessages(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$47;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$47;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getUser(I)Lorg/telegram/tgnet/TLRPC$User;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getUserSync(I)Lorg/telegram/tgnet/TLRPC$User;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessagesStorage$87;

    invoke-direct {v3, p0, v1, p1, v0}, Lorg/telegram/messenger/MessagesStorage$87;-><init>(Lorg/telegram/messenger/MessagesStorage;[Lorg/telegram/tgnet/TLRPC$User;ILjava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    aget-object v0, v1, v4

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getUsers(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string/jumbo v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "SELECT data, status FROM users WHERE uid IN(%s)"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    if-eqz v2, :cond_2

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v0, :cond_3

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v3

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    :cond_3
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_0
.end method

.method public getWallpapers()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$17;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$17;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hasAuthMessage(I)Z
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    const/4 v1, 0x1

    new-array v1, v1, [Z

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MessagesStorage$59;

    invoke-direct {v3, p0, p1, v1, v0}, Lorg/telegram/messenger/MessagesStorage$59;-><init>(Lorg/telegram/messenger/MessagesStorage;I[ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    aget-boolean v0, v1, v4

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isDialogHasMessages(J)Z
    .locals 9

    const/4 v7, 0x0

    new-instance v5, Ljava/util/concurrent/Semaphore;

    invoke-direct {v5, v7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    const/4 v0, 0x1

    new-array v4, v0, [Z

    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$58;

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$58;-><init>(Lorg/telegram/messenger/MessagesStorage;J[ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    aget-boolean v0, v4, v7

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isMigratedChat(I)Z
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    const/4 v1, 0x1

    new-array v1, v1, [Z

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MessagesStorage$37;

    invoke-direct {v3, p0, p1, v1, v0}, Lorg/telegram/messenger/MessagesStorage$37;-><init>(Lorg/telegram/messenger/MessagesStorage;I[ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    aget-boolean v0, v1, v4

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadChatInfo(ILjava/util/concurrent/Semaphore;ZZ)V
    .locals 7

    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$38;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$38;-><init>(Lorg/telegram/messenger/MessagesStorage;ILjava/util/concurrent/Semaphore;ZZ)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadUnreadMessages()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$11;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$11;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadWebRecent(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$13;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$13;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$71;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$71;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public markMessagesAsDeleted(Ljava/util/ArrayList;ZI)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesStorage$79;

    invoke-direct {v2, p0, p1, p3}, Lorg/telegram/messenger/MessagesStorage$79;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;I)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p3}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeletedInternal(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public markMessagesAsDeletedByRandoms(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$77;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$77;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public markMessagesAsRead(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p4, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$76;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$76;-><init>(Lorg/telegram/messenger/MessagesStorage;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsReadInternal(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public markMessagesContentAsRead(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$75;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$75;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public openDatabase(Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "cache4.db"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    :try_start_0
    new-instance v3, Lorg/telegram/SQLite/SQLiteDatabase;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage;->cacheFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v4, "PRAGMA secure_delete = ON"

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v4, "PRAGMA temp_store = 1"

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    if-eqz v0, :cond_1

    const-string/jumbo v0, "create new database"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE messages_holes(uid INTEGER, start INTEGER, end INTEGER, PRIMARY KEY(uid, start));"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS uid_end_messages_holes ON messages_holes(uid, end);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE media_holes_v2(uid INTEGER, type INTEGER, start INTEGER, end INTEGER, PRIMARY KEY(uid, type, start));"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS uid_end_media_holes_v2 ON media_holes_v2(uid, type, end);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE messages(mid INTEGER PRIMARY KEY, uid INTEGER, read_state INTEGER, send_state INTEGER, date INTEGER, data BLOB, out INTEGER, ttl INTEGER, media INTEGER, replydata BLOB, imp INTEGER)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS uid_mid_idx_messages ON messages(uid, mid);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS uid_date_mid_idx_messages ON messages(uid, date, mid);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS mid_out_idx_messages ON messages(mid, out);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS task_idx_messages ON messages(uid, out, read_state, ttl, date, send_state);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS send_state_idx_messages ON messages(mid, send_state, date) WHERE mid < 0 AND send_state = 1;"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE download_queue(uid INTEGER, type INTEGER, date INTEGER, data BLOB, PRIMARY KEY (uid, type));"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS type_date_idx_download_queue ON download_queue(type, date);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE user_phones_v6(uid INTEGER, phone TEXT, sphone TEXT, deleted INTEGER, PRIMARY KEY (uid, phone))"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS sphone_deleted_idx_user_phones ON user_phones_v6(sphone, deleted);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE dialogs(did INTEGER PRIMARY KEY, date INTEGER, unread_count INTEGER, last_mid INTEGER, inbox_max INTEGER, outbox_max INTEGER, last_mid_i INTEGER, unread_count_i INTEGER, pts INTEGER, date_i INTEGER, pinned INTEGER)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS date_idx_dialogs ON dialogs(date);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS last_mid_idx_dialogs ON dialogs(last_mid);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS unread_count_idx_dialogs ON dialogs(unread_count);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS last_mid_i_idx_dialogs ON dialogs(last_mid_i);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS unread_count_i_idx_dialogs ON dialogs(unread_count_i);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE randoms(random_id INTEGER, mid INTEGER, PRIMARY KEY (random_id, mid))"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS mid_idx_randoms ON randoms(mid);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE enc_tasks_v2(mid INTEGER PRIMARY KEY, date INTEGER)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS date_idx_enc_tasks_v2 ON enc_tasks_v2(date);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE messages_seq(mid INTEGER PRIMARY KEY, seq_in INTEGER, seq_out INTEGER);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS seq_idx_messages_seq ON messages_seq(seq_in, seq_out);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE params(id INTEGER PRIMARY KEY, seq INTEGER, pts INTEGER, date INTEGER, qts INTEGER, lsv INTEGER, sg INTEGER, pbytes BLOB)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "INSERT INTO params VALUES(1, 0, 0, 0, 0, 0, 0, NULL)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE media_v2(mid INTEGER PRIMARY KEY, uid INTEGER, date INTEGER, type INTEGER, data BLOB)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS uid_mid_type_date_idx_media ON media_v2(uid, mid, type, date);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE bot_keyboard(uid INTEGER PRIMARY KEY, mid INTEGER, info BLOB)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS bot_keyboard_idx_mid ON bot_keyboard(mid);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE chat_settings_v2(uid INTEGER PRIMARY KEY, info BLOB, pinned INTEGER)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS chat_settings_pinned_idx ON chat_settings_v2(uid, pinned) WHERE pinned != 0;"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE chat_pinned(uid INTEGER PRIMARY KEY, pinned INTEGER, data BLOB)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS chat_pinned_mid_idx ON chat_pinned(uid, pinned) WHERE pinned != 0;"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE chat_hints(did INTEGER, type INTEGER, rating REAL, date INTEGER, PRIMARY KEY(did, type))"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS chat_hints_rating_idx ON chat_hints(rating);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE botcache(id TEXT PRIMARY KEY, date INTEGER, data BLOB)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS botcache_date_idx ON botcache(date);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE users_data(uid INTEGER PRIMARY KEY, about TEXT)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE users(uid INTEGER PRIMARY KEY, name TEXT, status INTEGER, data BLOB)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE chats(uid INTEGER PRIMARY KEY, name TEXT, data BLOB)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE enc_chats(uid INTEGER PRIMARY KEY, user INTEGER, name TEXT, data BLOB, g BLOB, authkey BLOB, ttl INTEGER, layer INTEGER, seq_in INTEGER, seq_out INTEGER, use_count INTEGER, exchange_id INTEGER, key_date INTEGER, fprint INTEGER, fauthkey BLOB, khash BLOB, in_seq_no INTEGER, admin_id INTEGER)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE channel_users_v2(did INTEGER, uid INTEGER, date INTEGER, data BLOB, PRIMARY KEY(did, uid))"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE contacts(uid INTEGER PRIMARY KEY, mutual INTEGER)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE wallpapers(uid INTEGER PRIMARY KEY, data BLOB)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE user_photos(uid INTEGER, id INTEGER, data BLOB, PRIMARY KEY (uid, id))"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE blocked_users(uid INTEGER PRIMARY KEY)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE dialog_settings(did INTEGER PRIMARY KEY, flags INTEGER);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE web_recent_v3(id TEXT, type INTEGER, image_url TEXT, thumb_url TEXT, local_url TEXT, width INTEGER, height INTEGER, size INTEGER, date INTEGER, document BLOB, PRIMARY KEY (id, type));"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE stickers_v2(id INTEGER PRIMARY KEY, data BLOB, date INTEGER, hash TEXT);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE stickers_featured(id INTEGER PRIMARY KEY, data BLOB, unread BLOB, date INTEGER, hash TEXT);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE hashtag_recent_v2(id TEXT PRIMARY KEY, date INTEGER);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE webpage_pending(id INTEGER, mid INTEGER, PRIMARY KEY (id, mid));"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE user_contacts_v6(uid INTEGER PRIMARY KEY, fname TEXT, sname TEXT)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE sent_files_v2(uid TEXT, type INTEGER, data BLOB, PRIMARY KEY (uid, type))"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE search_recent(did INTEGER PRIMARY KEY, date INTEGER);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE media_counts_v2(uid INTEGER, type INTEGER, count INTEGER, PRIMARY KEY(uid, type))"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE keyvalue(id TEXT PRIMARY KEY, value TEXT)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE bot_info(uid INTEGER PRIMARY KEY, info BLOB)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE pending_tasks(id INTEGER PRIMARY KEY, data BLOB);"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE requested_holes(uid INTEGER, seq_out_start INTEGER, seq_out_end INTEGER, PRIMARY KEY (uid, seq_out_start, seq_out_end));"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "PRAGMA user_version = 41"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->loadUnreadMessages()V

    invoke-direct {p0}, Lorg/telegram/messenger/MessagesStorage;->loadPendingTasks()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v3, "PRAGMA user_version"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeInt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "current db version = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "malformed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "malformed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/MessagesStorage;->cleanupInternal()V

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MessagesStorage;->openDatabase(Z)V

    goto :goto_1

    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v4, "SELECT seq, pts, date, qts, lsv, sg, pbytes FROM params WHERE id = 1"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    sput v4, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    sput v4, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v1, 0x0

    sput-object v1, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    :cond_3
    :goto_2
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    const/16 v0, 0x29

    if-ge v3, v0, :cond_0

    :try_start_3
    invoke-direct {p0, v3}, Lorg/telegram/messenger/MessagesStorage;->updateDbToLastVersion(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :cond_4
    const/4 v4, 0x6

    :try_start_4
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v4

    sput-object v4, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    sget-object v4, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    if-eqz v4, :cond_3

    sget-object v4, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    array-length v4, v4

    if-ne v4, v1, :cond_3

    const/4 v1, 0x0

    sput-object v1, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS params(id INTEGER PRIMARY KEY, seq INTEGER, pts INTEGER, date INTEGER, qts INTEGER, lsv INTEGER, sg INTEGER, pbytes BLOB)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string/jumbo v1, "INSERT INTO params VALUES(1, 0, 0, 0, 0, 0, 0, NULL)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    :cond_5
    move v0, v2

    goto/16 :goto_0
.end method

.method public overwriteChannel(ILorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$67;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/telegram/messenger/MessagesStorage$67;-><init>(Lorg/telegram/messenger/MessagesStorage;IILorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processPendingRead(JJI)V
    .locals 9

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$39;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage$39;-><init>(Lorg/telegram/messenger/MessagesStorage;JJI)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public putBlockedUsers(Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$20;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesStorage$20;-><init>(Lorg/telegram/messenger/MessagesStorage;ZLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public putCachedPhoneBook(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$43;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$43;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public putCachedPhoneBook2(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/CContactsController$Contact;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$44;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$44;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public putChannelViews(Landroid/util/SparseArray;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$68;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$68;-><init>(Lorg/telegram/messenger/MessagesStorage;Landroid/util/SparseArray;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public putContacts(Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesStorage$40;

    invoke-direct {v2, p0, p2, v0}, Lorg/telegram/messenger/MessagesStorage$40;-><init>(Lorg/telegram/messenger/MessagesStorage;ZLjava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public putDialogPhotos(ILorg/telegram/tgnet/TLRPC$photos_Photos;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$26;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesStorage$26;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$photos_Photos;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public putDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V
    .locals 2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$84;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$84;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_dialog;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$61;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$61;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_dialog;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public putMessages(Ljava/util/ArrayList;ZZZI)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;ZZZI)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIZ)V

    return-void
.end method

.method public putMessages(Ljava/util/ArrayList;ZZZIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;ZZZIZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$70;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage$70;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;ZZIZ)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessagesInternal(Ljava/util/ArrayList;ZZIZ)V

    goto :goto_0
.end method

.method public putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZ)V
    .locals 10

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$80;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-wide v4, p2

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagesStorage$80;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$messages_Messages;IJIZ)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public putSentFile(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$53;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$53;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;ZZ)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p4, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$62;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$62;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChatsInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method public putWallpapers(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$WallPaper;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$12;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public putWebPages(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$66;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$66;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public putWebRecent(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$16;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$16;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFromDownloadQueue(JIZ)V
    .locals 7

    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$63;

    move-object v1, p0

    move v2, p4

    move v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$63;-><init>(Lorg/telegram/messenger/MessagesStorage;ZIJ)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removePendingTask(J)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$6;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$6;-><init>(Lorg/telegram/messenger/MessagesStorage;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveBotCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$32;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesStorage$32;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public saveChannelPts(II)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$8;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesStorage$8;-><init>(Lorg/telegram/messenger/MessagesStorage;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveDiffParams(IIII)V
    .locals 7

    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$9;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$9;-><init>(Lorg/telegram/messenger/MessagesStorage;IIII)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveSecretParams(II[B)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$3;-><init>(Lorg/telegram/messenger/MessagesStorage;II[B)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDialogFlags(JJ)V
    .locals 7

    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$10;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage$10;-><init>(Lorg/telegram/messenger/MessagesStorage;JJ)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDialogPinned(JI)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$83;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/MessagesStorage$83;-><init>(Lorg/telegram/messenger/MessagesStorage;IJ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMessageSeq(III)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$72;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$72;-><init>(Lorg/telegram/messenger/MessagesStorage;III)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startTransaction(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$50;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesStorage$50;-><init>(Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public unpinAllDialogsExceptNew(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$82;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$82;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateChannelPinnedMessage(II)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$35;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$35;-><init>(Lorg/telegram/messenger/MessagesStorage;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateChannelUsers(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$31;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$31;-><init>(Lorg/telegram/messenger/MessagesStorage;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateChatInfo(IIIII)V
    .locals 8

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$36;

    move-object v1, p0

    move v2, p1

    move v3, p3

    move v4, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage$36;-><init>(Lorg/telegram/messenger/MessagesStorage;IIIII)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$34;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/MessagesStorage$34;-><init>(Lorg/telegram/messenger/MessagesStorage;ZLorg/telegram/tgnet/TLRPC$ChatFull;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateChatParticipants(Lorg/telegram/tgnet/TLRPC$ChatParticipants;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$30;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$30;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$ChatParticipants;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateDialogsWithDeletedMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V
    .locals 2
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
            ">;ZI)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$78;

    invoke-direct {v1, p0, p1, p2, p4}, Lorg/telegram/messenger/MessagesStorage$78;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p4}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessagesInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public updateDialogsWithReadMessages(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$29;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/MessagesStorage$29;-><init>(Lorg/telegram/messenger/MessagesStorage;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithReadMessagesInternal(Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method public updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$57;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$57;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateEncryptedChatLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$56;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$56;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateEncryptedChatSeq(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$54;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$54;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateEncryptedChatTTL(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$55;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MessagesStorage$55;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateMessageStateAndId(JLjava/lang/Integer;IIZI)[J
    .locals 9

    if-eqz p6, :cond_0

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$73;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagesStorage$73;-><init>(Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Integer;III)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/MessagesStorage;->updateMessageStateAndIdInternal(JLjava/lang/Integer;III)[J

    move-result-object v0

    goto :goto_0
.end method

.method public updateUsers(Ljava/util/ArrayList;ZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;ZZZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p4, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage;->storageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesStorage$74;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$74;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;ZZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->updateUsersInternal(Ljava/util/ArrayList;ZZ)V

    goto :goto_0
.end method
