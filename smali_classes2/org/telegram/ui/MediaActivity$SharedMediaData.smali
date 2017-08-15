.class Lorg/telegram/ui/MediaActivity$SharedMediaData;
.super Ljava/lang/Object;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/MediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedMediaData"
.end annotation


# instance fields
.field private endReached:[Z

.field private loading:Z

.field private max_id:[I

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private messagesDict:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private sectionArrays:Ljava/util/HashMap;
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

.field private sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;

.field private totalCount:I


# direct methods
.method private constructor <init>(Lorg/telegram/ui/MediaActivity;)V
    .locals 4

    const/4 v3, 0x2

    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;

    new-array v0, v3, [Ljava/util/HashMap;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messagesDict:[Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    new-array v0, v3, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->endReached:[Z

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->max_id:[I

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/MediaActivity;Lorg/telegram/ui/MediaActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/MediaActivity$SharedMediaData;-><init>(Lorg/telegram/ui/MediaActivity;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->max_id:[I

    return-object v0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/MediaActivity$SharedMediaData;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->totalCount:I

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->endReached:[Z

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z

    return p1
.end method


# virtual methods
.method public addMessage(Lorg/telegram/messenger/MessageObject;ZZ)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messagesDict:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    :goto_2
    if-eqz p2, :cond_5

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messagesDict:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_6

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->max_id:[I

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->max_id:[I

    aget v4, v4, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v0, v1

    :cond_3
    :goto_4
    move v2, v3

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->max_id:[I

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->max_id:[I

    aget v4, v4, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v1

    goto :goto_4
.end method

.method public deleteMessage(II)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messagesDict:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messagesDict:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->sections:Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->totalCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->totalCount:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public replaceMid(II)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messagesDict:[Ljava/util/HashMap;

    aget-object v0, v0, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messagesDict:[Ljava/util/HashMap;

    aget-object v1, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$SharedMediaData;->messagesDict:[Ljava/util/HashMap;

    aget-object v1, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    :cond_0
    return-void
.end method
