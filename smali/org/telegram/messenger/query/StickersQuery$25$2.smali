.class Lorg/telegram/messenger/query/StickersQuery$25$2;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$25;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$25;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$25;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$25$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$25$2;->this$0:Lorg/telegram/messenger/query/StickersQuery$25;

    iget v0, v0, Lorg/telegram/messenger/query/StickersQuery$25;->val$type:I

    invoke-static {v0, v1, v1}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V

    return-void
.end method
