.class Lorg/telegram/messenger/StatsController$2;
.super Ljava/lang/Object;
.source "StatsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/StatsController;->saveStats()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/StatsController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/StatsController;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v0, 0x3

    if-ge v2, v0, :cond_1

    move v0, v1

    :goto_1
    const/4 v3, 0x7

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    # getter for: Lorg/telegram/messenger/StatsController;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lorg/telegram/messenger/StatsController;->access$100(Lorg/telegram/messenger/StatsController;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "receivedItems"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    # getter for: Lorg/telegram/messenger/StatsController;->receivedItems:[[I
    invoke-static {v5}, Lorg/telegram/messenger/StatsController;->access$000(Lorg/telegram/messenger/StatsController;)[[I

    move-result-object v5

    aget-object v5, v5, v2

    aget v5, v5, v0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    # getter for: Lorg/telegram/messenger/StatsController;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lorg/telegram/messenger/StatsController;->access$100(Lorg/telegram/messenger/StatsController;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sentItems"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    # getter for: Lorg/telegram/messenger/StatsController;->sentItems:[[I
    invoke-static {v5}, Lorg/telegram/messenger/StatsController;->access$200(Lorg/telegram/messenger/StatsController;)[[I

    move-result-object v5

    aget-object v5, v5, v2

    aget v5, v5, v0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    # getter for: Lorg/telegram/messenger/StatsController;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lorg/telegram/messenger/StatsController;->access$100(Lorg/telegram/messenger/StatsController;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "receivedBytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    # getter for: Lorg/telegram/messenger/StatsController;->receivedBytes:[[J
    invoke-static {v5}, Lorg/telegram/messenger/StatsController;->access$300(Lorg/telegram/messenger/StatsController;)[[J

    move-result-object v5

    aget-object v5, v5, v2

    aget-wide v6, v5, v0

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    # getter for: Lorg/telegram/messenger/StatsController;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lorg/telegram/messenger/StatsController;->access$100(Lorg/telegram/messenger/StatsController;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sentBytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    # getter for: Lorg/telegram/messenger/StatsController;->sentBytes:[[J
    invoke-static {v5}, Lorg/telegram/messenger/StatsController;->access$400(Lorg/telegram/messenger/StatsController;)[[J

    move-result-object v5

    aget-object v5, v5, v2

    aget-wide v6, v5, v0

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    # getter for: Lorg/telegram/messenger/StatsController;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->access$100(Lorg/telegram/messenger/StatsController;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "callsTotalTime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    # getter for: Lorg/telegram/messenger/StatsController;->callsTotalTime:[I
    invoke-static {v4}, Lorg/telegram/messenger/StatsController;->access$500(Lorg/telegram/messenger/StatsController;)[I

    move-result-object v4

    aget v4, v4, v2

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    # getter for: Lorg/telegram/messenger/StatsController;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->access$100(Lorg/telegram/messenger/StatsController;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetStatsDate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    # getter for: Lorg/telegram/messenger/StatsController;->resetStatsDate:[J
    invoke-static {v4}, Lorg/telegram/messenger/StatsController;->access$600(Lorg/telegram/messenger/StatsController;)[J

    move-result-object v4

    aget-wide v4, v4, v2

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/StatsController$2;->this$0:Lorg/telegram/messenger/StatsController;

    # getter for: Lorg/telegram/messenger/StatsController;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->access$100(Lorg/telegram/messenger/StatsController;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method
