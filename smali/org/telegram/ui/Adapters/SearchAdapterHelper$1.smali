.class Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;
.super Ljava/lang/Object;
.source "SearchAdapterHelper.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field final synthetic val$allowBots:Z

.field final synthetic val$allowChats:Z

.field final synthetic val$allowSelf:Z

.field final synthetic val$currentReqId:I

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper;IZZZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iput p2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;->val$currentReqId:I

    iput-boolean p3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;->val$allowChats:Z

    iput-boolean p4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;->val$allowBots:Z

    iput-boolean p5, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;->val$allowSelf:Z

    iput-object p6, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1$1;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
