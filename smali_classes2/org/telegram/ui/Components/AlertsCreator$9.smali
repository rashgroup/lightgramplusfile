.class final Lorg/telegram/ui/Components/AlertsCreator$9;
.super Ljava/lang/Object;
.source "AlertsCreator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createPrioritySelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JZZLjava/lang/Runnable;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J

.field final synthetic val$globalGroup:Z

.field final synthetic val$onSelect:Ljava/lang/Runnable;

.field final synthetic val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$selected:[I


# direct methods
.method constructor <init>([IJZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$selected:[I

    iput-wide p2, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$dialog_id:J

    iput-boolean p4, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$globalGroup:Z

    iput-object p5, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p6, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$onSelect:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$selected:[I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v6

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "Notifications"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$dialog_id:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$selected:[I

    aget v0, v0, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$selected:[I

    const/4 v2, 0x3

    aput v2, v0, v6

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "priority_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$dialog_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$selected:[I

    aget v2, v2, v6

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialig()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$onSelect:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$onSelect:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$selected:[I

    aget v2, v0, v6

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v6

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$globalGroup:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "priority_group"

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$9;->val$selected:[I

    aget v2, v2, v6

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "priority_messages"

    goto :goto_2
.end method
