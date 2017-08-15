.class final Lorg/telegram/ui/Components/AlertsCreator$8;
.super Ljava/lang/Object;
.source "AlertsCreator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createVibrationSelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JLjava/lang/String;Ljava/lang/Runnable;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J

.field final synthetic val$onSelect:Ljava/lang/Runnable;

.field final synthetic val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$prefKeyPrefix:Ljava/lang/String;

.field final synthetic val$selected:[I


# direct methods
.method constructor <init>([IJLjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$selected:[I

    iput-wide p2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$dialog_id:J

    iput-object p4, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$prefKeyPrefix:Ljava/lang/String;

    iput-object p5, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p6, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$onSelect:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$selected:[I

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

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$dialog_id:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$selected:[I

    aget v1, v1, v6

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$prefKeyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$dialog_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialig()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$onSelect:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$onSelect:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$selected:[I

    aget v1, v1, v6

    if-ne v1, v7, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$prefKeyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$dialog_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$selected:[I

    aget v1, v1, v6

    if-ne v1, v8, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$prefKeyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$dialog_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$selected:[I

    aget v1, v1, v6

    if-ne v1, v9, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$prefKeyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$dialog_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$selected:[I

    aget v1, v1, v6

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$prefKeyPrefix:Ljava/lang/String;

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$selected:[I

    aget v1, v1, v6

    if-ne v1, v7, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$prefKeyPrefix:Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$selected:[I

    aget v1, v1, v6

    if-ne v1, v8, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$prefKeyPrefix:Ljava/lang/String;

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$selected:[I

    aget v1, v1, v6

    if-ne v1, v9, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$prefKeyPrefix:Ljava/lang/String;

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$selected:[I

    aget v1, v1, v6

    if-ne v1, v10, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$8;->val$prefKeyPrefix:Ljava/lang/String;

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0
.end method
