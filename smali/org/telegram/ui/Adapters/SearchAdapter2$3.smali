.class Lorg/telegram/ui/Adapters/SearchAdapter2$3;
.super Ljava/lang/Object;
.source "SearchAdapter2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/SearchAdapter2;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/SearchAdapter2;

.field final synthetic val$names:Ljava/util/ArrayList;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/SearchAdapter2;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter2$3;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter2;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapter2$3;->val$users:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/SearchAdapter2$3;->val$names:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2$3;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter2;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter2$3;->val$users:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/Adapters/SearchAdapter2;->searchResult:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapter2;->access$702(Lorg/telegram/ui/Adapters/SearchAdapter2;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2$3;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter2;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter2$3;->val$names:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/Adapters/SearchAdapter2;->searchResultNames:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapter2;->access$802(Lorg/telegram/ui/Adapters/SearchAdapter2;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2$3;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter2;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapter2;->notifyDataSetChanged()V

    return-void
.end method
