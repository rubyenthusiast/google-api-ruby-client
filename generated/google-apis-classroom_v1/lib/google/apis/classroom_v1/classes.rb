# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module ClassroomV1
      
      # An add-on attachment on a post.
      class AddOnAttachment
        include Google::Apis::Core::Hashable
      
        # Output only. Identifiers of attachments that were previous copies of this
        # attachment. If the attachment was previously copied by virtue of its parent
        # post being copied, this enumerates the identifiers of attachments that were
        # its previous copies in ascending chronological order of copy.
        # Corresponds to the JSON property `copyHistory`
        # @return [Array<Google::Apis::ClassroomV1::CopyHistory>]
        attr_accessor :copy_history
      
        # Immutable. Identifier of the course.
        # Corresponds to the JSON property `courseId`
        # @return [String]
        attr_accessor :course_id
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `dueDate`
        # @return [Google::Apis::ClassroomV1::Date]
        attr_accessor :due_date
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `dueTime`
        # @return [Google::Apis::ClassroomV1::TimeOfDay]
        attr_accessor :due_time
      
        # Immutable. Classroom-assigned identifier for this attachment, unique per post.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Immutable. Identifier of the `Announcement`, `CourseWork`, or `
        # CourseWorkMaterial` under which the attachment is attached. Unique per course.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # Maximum grade for this attachment. Can only be set if `studentWorkReviewUri`
        # is set. Set to a non-zero value to indicate that the attachment supports grade
        # passback. If set, this must be a non-negative integer value. When set to zero,
        # the attachment will not support grade passback.
        # Corresponds to the JSON property `maxPoints`
        # @return [Float]
        attr_accessor :max_points
      
        # Immutable. Deprecated, use `item_id` instead.
        # Corresponds to the JSON property `postId`
        # @return [String]
        attr_accessor :post_id
      
        # URI to be iframed after being populated with query parameters.
        # Corresponds to the JSON property `studentViewUri`
        # @return [Google::Apis::ClassroomV1::EmbedUri]
        attr_accessor :student_view_uri
      
        # URI to be iframed after being populated with query parameters.
        # Corresponds to the JSON property `studentWorkReviewUri`
        # @return [Google::Apis::ClassroomV1::EmbedUri]
        attr_accessor :student_work_review_uri
      
        # URI to be iframed after being populated with query parameters.
        # Corresponds to the JSON property `teacherViewUri`
        # @return [Google::Apis::ClassroomV1::EmbedUri]
        attr_accessor :teacher_view_uri
      
        # Required. Title of this attachment. The title must be between 1 and 1000
        # characters.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @copy_history = args[:copy_history] if args.key?(:copy_history)
          @course_id = args[:course_id] if args.key?(:course_id)
          @due_date = args[:due_date] if args.key?(:due_date)
          @due_time = args[:due_time] if args.key?(:due_time)
          @id = args[:id] if args.key?(:id)
          @item_id = args[:item_id] if args.key?(:item_id)
          @max_points = args[:max_points] if args.key?(:max_points)
          @post_id = args[:post_id] if args.key?(:post_id)
          @student_view_uri = args[:student_view_uri] if args.key?(:student_view_uri)
          @student_work_review_uri = args[:student_work_review_uri] if args.key?(:student_work_review_uri)
          @teacher_view_uri = args[:teacher_view_uri] if args.key?(:teacher_view_uri)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Payload for grade update requests.
      class AddOnAttachmentStudentSubmission
        include Google::Apis::Core::Hashable
      
        # Student grade on this attachment. If unset, no grade was set.
        # Corresponds to the JSON property `pointsEarned`
        # @return [Float]
        attr_accessor :points_earned
      
        # Submission state of add-on attachment's parent post (i.e. assignment).
        # Corresponds to the JSON property `postSubmissionState`
        # @return [String]
        attr_accessor :post_submission_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @points_earned = args[:points_earned] if args.key?(:points_earned)
          @post_submission_state = args[:post_submission_state] if args.key?(:post_submission_state)
        end
      end
      
      # Attachment-relevant metadata for Classroom add-ons in the context of a
      # specific post.
      class AddOnContext
        include Google::Apis::Core::Hashable
      
        # Immutable. Identifier of the course.
        # Corresponds to the JSON property `courseId`
        # @return [String]
        attr_accessor :course_id
      
        # Immutable. Identifier of the `Announcement`, `CourseWork`, or `
        # CourseWorkMaterial` under which the attachment is attached.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # Immutable. Deprecated, use `item_id` instead.
        # Corresponds to the JSON property `postId`
        # @return [String]
        attr_accessor :post_id
      
        # Role-specific context if the requesting user is a student.
        # Corresponds to the JSON property `studentContext`
        # @return [Google::Apis::ClassroomV1::StudentContext]
        attr_accessor :student_context
      
        # Optional. Whether the post allows the teacher to see student work and passback
        # grades.
        # Corresponds to the JSON property `supportsStudentWork`
        # @return [Boolean]
        attr_accessor :supports_student_work
        alias_method :supports_student_work?, :supports_student_work
      
        # Role-specific context if the requesting user is a teacher.
        # Corresponds to the JSON property `teacherContext`
        # @return [Google::Apis::ClassroomV1::TeacherContext]
        attr_accessor :teacher_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @course_id = args[:course_id] if args.key?(:course_id)
          @item_id = args[:item_id] if args.key?(:item_id)
          @post_id = args[:post_id] if args.key?(:post_id)
          @student_context = args[:student_context] if args.key?(:student_context)
          @supports_student_work = args[:supports_student_work] if args.key?(:supports_student_work)
          @teacher_context = args[:teacher_context] if args.key?(:teacher_context)
        end
      end
      
      # Announcement created by a teacher for students of the course
      class Announcement
        include Google::Apis::Core::Hashable
      
        # Absolute link to this announcement in the Classroom web UI. This is only
        # populated if `state` is `PUBLISHED`. Read-only.
        # Corresponds to the JSON property `alternateLink`
        # @return [String]
        attr_accessor :alternate_link
      
        # Assignee mode of the announcement. If unspecified, the default value is `
        # ALL_STUDENTS`.
        # Corresponds to the JSON property `assigneeMode`
        # @return [String]
        attr_accessor :assignee_mode
      
        # Identifier of the course. Read-only.
        # Corresponds to the JSON property `courseId`
        # @return [String]
        attr_accessor :course_id
      
        # Timestamp when this announcement was created. Read-only.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Identifier for the user that created the announcement. Read-only.
        # Corresponds to the JSON property `creatorUserId`
        # @return [String]
        attr_accessor :creator_user_id
      
        # Classroom-assigned identifier of this announcement, unique per course. Read-
        # only.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Assignee details about a coursework/announcement. This field is set if and
        # only if `assigneeMode` is `INDIVIDUAL_STUDENTS`.
        # Corresponds to the JSON property `individualStudentsOptions`
        # @return [Google::Apis::ClassroomV1::IndividualStudentsOptions]
        attr_accessor :individual_students_options
      
        # Additional materials. Announcements must have no more than 20 material items.
        # Corresponds to the JSON property `materials`
        # @return [Array<Google::Apis::ClassroomV1::Material>]
        attr_accessor :materials
      
        # Optional timestamp when this announcement is scheduled to be published.
        # Corresponds to the JSON property `scheduledTime`
        # @return [String]
        attr_accessor :scheduled_time
      
        # Status of this announcement. If unspecified, the default state is `DRAFT`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Description of this announcement. The text must be a valid UTF-8 string
        # containing no more than 30,000 characters.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Timestamp of the most recent change to this announcement. Read-only.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_link = args[:alternate_link] if args.key?(:alternate_link)
          @assignee_mode = args[:assignee_mode] if args.key?(:assignee_mode)
          @course_id = args[:course_id] if args.key?(:course_id)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @creator_user_id = args[:creator_user_id] if args.key?(:creator_user_id)
          @id = args[:id] if args.key?(:id)
          @individual_students_options = args[:individual_students_options] if args.key?(:individual_students_options)
          @materials = args[:materials] if args.key?(:materials)
          @scheduled_time = args[:scheduled_time] if args.key?(:scheduled_time)
          @state = args[:state] if args.key?(:state)
          @text = args[:text] if args.key?(:text)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Additional details for assignments.
      class Assignment
        include Google::Apis::Core::Hashable
      
        # Representation of a Google Drive folder.
        # Corresponds to the JSON property `studentWorkFolder`
        # @return [Google::Apis::ClassroomV1::DriveFolder]
        attr_accessor :student_work_folder
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @student_work_folder = args[:student_work_folder] if args.key?(:student_work_folder)
        end
      end
      
      # Student work for an assignment.
      class AssignmentSubmission
        include Google::Apis::Core::Hashable
      
        # Attachments added by the student. Drive files that correspond to materials
        # with a share mode of STUDENT_COPY may not exist yet if the student has not
        # accessed the assignment in Classroom. Some attachment metadata is only
        # populated if the requesting user has permission to access it. Identifier and
        # alternate_link fields are always available, but others (for example, title)
        # may not be.
        # Corresponds to the JSON property `attachments`
        # @return [Array<Google::Apis::ClassroomV1::Attachment>]
        attr_accessor :attachments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachments = args[:attachments] if args.key?(:attachments)
        end
      end
      
      # Attachment added to student assignment work. When creating attachments,
      # setting the `form` field is not supported.
      class Attachment
        include Google::Apis::Core::Hashable
      
        # Representation of a Google Drive file.
        # Corresponds to the JSON property `driveFile`
        # @return [Google::Apis::ClassroomV1::DriveFile]
        attr_accessor :drive_file
      
        # Google Forms item.
        # Corresponds to the JSON property `form`
        # @return [Google::Apis::ClassroomV1::Form]
        attr_accessor :form
      
        # URL item.
        # Corresponds to the JSON property `link`
        # @return [Google::Apis::ClassroomV1::Link]
        attr_accessor :link
      
        # YouTube video item.
        # Corresponds to the JSON property `youTubeVideo`
        # @return [Google::Apis::ClassroomV1::YouTubeVideo]
        attr_accessor :you_tube_video
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drive_file = args[:drive_file] if args.key?(:drive_file)
          @form = args[:form] if args.key?(:form)
          @link = args[:link] if args.key?(:link)
          @you_tube_video = args[:you_tube_video] if args.key?(:you_tube_video)
        end
      end
      
      # A reference to a Cloud Pub/Sub topic. To register for notifications, the owner
      # of the topic must grant `classroom-notifications@system.gserviceaccount.com`
      # the `projects.topics.publish` permission.
      class CloudPubsubTopic
        include Google::Apis::Core::Hashable
      
        # The `name` field of a Cloud Pub/Sub [Topic](https://cloud.google.com/pubsub/
        # docs/reference/rest/v1/projects.topics#Topic).
        # Corresponds to the JSON property `topicName`
        # @return [String]
        attr_accessor :topic_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @topic_name = args[:topic_name] if args.key?(:topic_name)
        end
      end
      
      # Identifier of a previous copy of a given attachment.
      class CopyHistory
        include Google::Apis::Core::Hashable
      
        # Immutable. Identifier of the attachment.
        # Corresponds to the JSON property `attachmentId`
        # @return [String]
        attr_accessor :attachment_id
      
        # Immutable. Identifier of the course.
        # Corresponds to the JSON property `courseId`
        # @return [String]
        attr_accessor :course_id
      
        # Immutable. Identifier of the `Announcement`, `CourseWork`, or `
        # CourseWorkMaterial` under which the attachment is attached.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # Immutable. Deprecated, use `item_id` instead.
        # Corresponds to the JSON property `postId`
        # @return [String]
        attr_accessor :post_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachment_id = args[:attachment_id] if args.key?(:attachment_id)
          @course_id = args[:course_id] if args.key?(:course_id)
          @item_id = args[:item_id] if args.key?(:item_id)
          @post_id = args[:post_id] if args.key?(:post_id)
        end
      end
      
      # A Course in Classroom.
      class Course
        include Google::Apis::Core::Hashable
      
        # Absolute link to this course in the Classroom web UI. Read-only.
        # Corresponds to the JSON property `alternateLink`
        # @return [String]
        attr_accessor :alternate_link
      
        # The Calendar ID for a calendar that all course members can see, to which
        # Classroom adds events for course work and announcements in the course. The
        # Calendar for a course is created asynchronously when the course is set to `
        # CourseState.ACTIVE` for the first time (at creation time or when it is updated
        # to `ACTIVE` through the UI or the API). The Calendar ID will not be populated
        # until the creation process is completed. Read-only.
        # Corresponds to the JSON property `calendarId`
        # @return [String]
        attr_accessor :calendar_id
      
        # The email address of a Google group containing all members of the course. This
        # group does not accept email and can only be used for permissions. Read-only.
        # Corresponds to the JSON property `courseGroupEmail`
        # @return [String]
        attr_accessor :course_group_email
      
        # Sets of materials that appear on the "about" page of this course. Read-only.
        # Corresponds to the JSON property `courseMaterialSets`
        # @return [Array<Google::Apis::ClassroomV1::CourseMaterialSet>]
        attr_accessor :course_material_sets
      
        # State of the course. If unspecified, the default state is `PROVISIONED`.
        # Corresponds to the JSON property `courseState`
        # @return [String]
        attr_accessor :course_state
      
        # Creation time of the course. Specifying this field in a course update mask
        # results in an error. Read-only.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Optional description. For example, "We'll be learning about the structure of
        # living creatures from a combination of textbooks, guest lectures, and lab work.
        # Expect to be excited!" If set, this field must be a valid UTF-8 string and no
        # longer than 30,000 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional heading for the description. For example, "Welcome to 10th Grade
        # Biology." If set, this field must be a valid UTF-8 string and no longer than
        # 3600 characters.
        # Corresponds to the JSON property `descriptionHeading`
        # @return [String]
        attr_accessor :description_heading
      
        # Enrollment code to use when joining this course. Specifying this field in a
        # course update mask results in an error. Read-only.
        # Corresponds to the JSON property `enrollmentCode`
        # @return [String]
        attr_accessor :enrollment_code
      
        # The gradebook settings for a course. See the [help center article](https://
        # support.google.com/edu/classroom/answer/9184995) for details.
        # Corresponds to the JSON property `gradebookSettings`
        # @return [Google::Apis::ClassroomV1::GradebookSettings]
        attr_accessor :gradebook_settings
      
        # Whether or not guardian notifications are enabled for this course. Read-only.
        # Corresponds to the JSON property `guardiansEnabled`
        # @return [Boolean]
        attr_accessor :guardians_enabled
        alias_method :guardians_enabled?, :guardians_enabled
      
        # Identifier for this course assigned by Classroom. When creating a course, you
        # may optionally set this identifier to an alias string in the request to create
        # a corresponding alias. The `id` is still assigned by Classroom and cannot be
        # updated after the course is created. Specifying this field in a course update
        # mask results in an error.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Name of the course. For example, "10th Grade Biology". The name is required.
        # It must be between 1 and 750 characters and a valid UTF-8 string.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The identifier of the owner of a course. When specified as a parameter of a
        # create course request, this field is required. The identifier can be one of
        # the following: * the numeric identifier for the user * the email address of
        # the user * the string literal `"me"`, indicating the requesting user This must
        # be set in a create request. Admins can also specify this field in a patch
        # course request to transfer ownership. In other contexts, it is read-only.
        # Corresponds to the JSON property `ownerId`
        # @return [String]
        attr_accessor :owner_id
      
        # Optional room location. For example, "301". If set, this field must be a valid
        # UTF-8 string and no longer than 650 characters.
        # Corresponds to the JSON property `room`
        # @return [String]
        attr_accessor :room
      
        # Section of the course. For example, "Period 2". If set, this field must be a
        # valid UTF-8 string and no longer than 2800 characters.
        # Corresponds to the JSON property `section`
        # @return [String]
        attr_accessor :section
      
        # Representation of a Google Drive folder.
        # Corresponds to the JSON property `teacherFolder`
        # @return [Google::Apis::ClassroomV1::DriveFolder]
        attr_accessor :teacher_folder
      
        # The email address of a Google group containing all teachers of the course.
        # This group does not accept email and can only be used for permissions. Read-
        # only.
        # Corresponds to the JSON property `teacherGroupEmail`
        # @return [String]
        attr_accessor :teacher_group_email
      
        # Time of the most recent update to this course. Specifying this field in a
        # course update mask results in an error. Read-only.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_link = args[:alternate_link] if args.key?(:alternate_link)
          @calendar_id = args[:calendar_id] if args.key?(:calendar_id)
          @course_group_email = args[:course_group_email] if args.key?(:course_group_email)
          @course_material_sets = args[:course_material_sets] if args.key?(:course_material_sets)
          @course_state = args[:course_state] if args.key?(:course_state)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @description = args[:description] if args.key?(:description)
          @description_heading = args[:description_heading] if args.key?(:description_heading)
          @enrollment_code = args[:enrollment_code] if args.key?(:enrollment_code)
          @gradebook_settings = args[:gradebook_settings] if args.key?(:gradebook_settings)
          @guardians_enabled = args[:guardians_enabled] if args.key?(:guardians_enabled)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @owner_id = args[:owner_id] if args.key?(:owner_id)
          @room = args[:room] if args.key?(:room)
          @section = args[:section] if args.key?(:section)
          @teacher_folder = args[:teacher_folder] if args.key?(:teacher_folder)
          @teacher_group_email = args[:teacher_group_email] if args.key?(:teacher_group_email)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Alternative identifier for a course. An alias uniquely identifies a course. It
      # must be unique within one of the following scopes: * domain: A domain-scoped
      # alias is visible to all users within the alias creator's domain and can be
      # created only by a domain admin. A domain-scoped alias is often used when a
      # course has an identifier external to Classroom. * project: A project-scoped
      # alias is visible to any request from an application using the Developer
      # Console project ID that created the alias and can be created by any project. A
      # project-scoped alias is often used when an application has alternative
      # identifiers. A random value can also be used to avoid duplicate courses in the
      # event of transmission failures, as retrying a request will return `
      # ALREADY_EXISTS` if a previous one has succeeded.
      class CourseAlias
        include Google::Apis::Core::Hashable
      
        # Alias string. The format of the string indicates the desired alias scoping. * `
        # d:` indicates a domain-scoped alias. Example: `d:math_101` * `p:` indicates a
        # project-scoped alias. Example: `p:abc123` This field has a maximum length of
        # 256 characters.
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias = args[:alias] if args.key?(:alias)
        end
      end
      
      # A material attached to a course as part of a material set.
      class CourseMaterial
        include Google::Apis::Core::Hashable
      
        # Representation of a Google Drive file.
        # Corresponds to the JSON property `driveFile`
        # @return [Google::Apis::ClassroomV1::DriveFile]
        attr_accessor :drive_file
      
        # Google Forms item.
        # Corresponds to the JSON property `form`
        # @return [Google::Apis::ClassroomV1::Form]
        attr_accessor :form
      
        # URL item.
        # Corresponds to the JSON property `link`
        # @return [Google::Apis::ClassroomV1::Link]
        attr_accessor :link
      
        # YouTube video item.
        # Corresponds to the JSON property `youTubeVideo`
        # @return [Google::Apis::ClassroomV1::YouTubeVideo]
        attr_accessor :you_tube_video
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drive_file = args[:drive_file] if args.key?(:drive_file)
          @form = args[:form] if args.key?(:form)
          @link = args[:link] if args.key?(:link)
          @you_tube_video = args[:you_tube_video] if args.key?(:you_tube_video)
        end
      end
      
      # A set of materials that appears on the "About" page of the course. These
      # materials might include a syllabus, schedule, or other background information
      # relating to the course as a whole.
      class CourseMaterialSet
        include Google::Apis::Core::Hashable
      
        # Materials attached to this set.
        # Corresponds to the JSON property `materials`
        # @return [Array<Google::Apis::ClassroomV1::CourseMaterial>]
        attr_accessor :materials
      
        # Title for this set.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @materials = args[:materials] if args.key?(:materials)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Information about a `Feed` with a `feed_type` of `COURSE_ROSTER_CHANGES`.
      class CourseRosterChangesInfo
        include Google::Apis::Core::Hashable
      
        # The `course_id` of the course to subscribe to roster changes for.
        # Corresponds to the JSON property `courseId`
        # @return [String]
        attr_accessor :course_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @course_id = args[:course_id] if args.key?(:course_id)
        end
      end
      
      # Course work created by a teacher for students of the course.
      class CourseWork
        include Google::Apis::Core::Hashable
      
        # Absolute link to this course work in the Classroom web UI. This is only
        # populated if `state` is `PUBLISHED`. Read-only.
        # Corresponds to the JSON property `alternateLink`
        # @return [String]
        attr_accessor :alternate_link
      
        # Assignee mode of the coursework. If unspecified, the default value is `
        # ALL_STUDENTS`.
        # Corresponds to the JSON property `assigneeMode`
        # @return [String]
        attr_accessor :assignee_mode
      
        # Additional details for assignments.
        # Corresponds to the JSON property `assignment`
        # @return [Google::Apis::ClassroomV1::Assignment]
        attr_accessor :assignment
      
        # Whether this course work item is associated with the Developer Console project
        # making the request. See CreateCourseWork for more details. Read-only.
        # Corresponds to the JSON property `associatedWithDeveloper`
        # @return [Boolean]
        attr_accessor :associated_with_developer
        alias_method :associated_with_developer?, :associated_with_developer
      
        # Identifier of the course. Read-only.
        # Corresponds to the JSON property `courseId`
        # @return [String]
        attr_accessor :course_id
      
        # Timestamp when this course work was created. Read-only.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Identifier for the user that created the coursework. Read-only.
        # Corresponds to the JSON property `creatorUserId`
        # @return [String]
        attr_accessor :creator_user_id
      
        # Optional description of this course work. If set, the description must be a
        # valid UTF-8 string containing no more than 30,000 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `dueDate`
        # @return [Google::Apis::ClassroomV1::Date]
        attr_accessor :due_date
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `dueTime`
        # @return [Google::Apis::ClassroomV1::TimeOfDay]
        attr_accessor :due_time
      
        # Details for a grade category in a course. Coursework may have zero or one
        # grade category, and the category may be used in computing the overall grade.
        # See the [help center article](https://support.google.com/edu/classroom/answer/
        # 9184995) for details.
        # Corresponds to the JSON property `gradeCategory`
        # @return [Google::Apis::ClassroomV1::GradeCategory]
        attr_accessor :grade_category
      
        # Identifier of the grading period associated with the coursework. * At creation,
        # if unspecified, the grading period ID will be set based on the `dueDate` (or `
        # scheduledTime` if no `dueDate` is set). * To indicate no association to any
        # grading period, set this field to an empty string (""). * If specified, it
        # must match an existing grading period ID in the course.
        # Corresponds to the JSON property `gradingPeriodId`
        # @return [String]
        attr_accessor :grading_period_id
      
        # Classroom-assigned identifier of this course work, unique per course. Read-
        # only.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Assignee details about a coursework/announcement. This field is set if and
        # only if `assigneeMode` is `INDIVIDUAL_STUDENTS`.
        # Corresponds to the JSON property `individualStudentsOptions`
        # @return [Google::Apis::ClassroomV1::IndividualStudentsOptions]
        attr_accessor :individual_students_options
      
        # Additional materials. CourseWork must have no more than 20 material items.
        # Corresponds to the JSON property `materials`
        # @return [Array<Google::Apis::ClassroomV1::Material>]
        attr_accessor :materials
      
        # Maximum grade for this course work. If zero or unspecified, this assignment is
        # considered ungraded. This must be a non-negative integer value.
        # Corresponds to the JSON property `maxPoints`
        # @return [Float]
        attr_accessor :max_points
      
        # Additional details for multiple-choice questions.
        # Corresponds to the JSON property `multipleChoiceQuestion`
        # @return [Google::Apis::ClassroomV1::MultipleChoiceQuestion]
        attr_accessor :multiple_choice_question
      
        # Optional timestamp when this course work is scheduled to be published.
        # Corresponds to the JSON property `scheduledTime`
        # @return [String]
        attr_accessor :scheduled_time
      
        # Status of this course work. If unspecified, the default state is `DRAFT`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Setting to determine when students are allowed to modify submissions. If
        # unspecified, the default value is `MODIFIABLE_UNTIL_TURNED_IN`.
        # Corresponds to the JSON property `submissionModificationMode`
        # @return [String]
        attr_accessor :submission_modification_mode
      
        # Title of this course work. The title must be a valid UTF-8 string containing
        # between 1 and 3000 characters.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Identifier for the topic that this coursework is associated with. Must match
        # an existing topic in the course.
        # Corresponds to the JSON property `topicId`
        # @return [String]
        attr_accessor :topic_id
      
        # Timestamp of the most recent change to this course work. Read-only.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Type of this course work. The type is set when the course work is created and
        # cannot be changed.
        # Corresponds to the JSON property `workType`
        # @return [String]
        attr_accessor :work_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_link = args[:alternate_link] if args.key?(:alternate_link)
          @assignee_mode = args[:assignee_mode] if args.key?(:assignee_mode)
          @assignment = args[:assignment] if args.key?(:assignment)
          @associated_with_developer = args[:associated_with_developer] if args.key?(:associated_with_developer)
          @course_id = args[:course_id] if args.key?(:course_id)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @creator_user_id = args[:creator_user_id] if args.key?(:creator_user_id)
          @description = args[:description] if args.key?(:description)
          @due_date = args[:due_date] if args.key?(:due_date)
          @due_time = args[:due_time] if args.key?(:due_time)
          @grade_category = args[:grade_category] if args.key?(:grade_category)
          @grading_period_id = args[:grading_period_id] if args.key?(:grading_period_id)
          @id = args[:id] if args.key?(:id)
          @individual_students_options = args[:individual_students_options] if args.key?(:individual_students_options)
          @materials = args[:materials] if args.key?(:materials)
          @max_points = args[:max_points] if args.key?(:max_points)
          @multiple_choice_question = args[:multiple_choice_question] if args.key?(:multiple_choice_question)
          @scheduled_time = args[:scheduled_time] if args.key?(:scheduled_time)
          @state = args[:state] if args.key?(:state)
          @submission_modification_mode = args[:submission_modification_mode] if args.key?(:submission_modification_mode)
          @title = args[:title] if args.key?(:title)
          @topic_id = args[:topic_id] if args.key?(:topic_id)
          @update_time = args[:update_time] if args.key?(:update_time)
          @work_type = args[:work_type] if args.key?(:work_type)
        end
      end
      
      # Information about a `Feed` with a `feed_type` of `COURSE_WORK_CHANGES`.
      class CourseWorkChangesInfo
        include Google::Apis::Core::Hashable
      
        # The `course_id` of the course to subscribe to work changes for.
        # Corresponds to the JSON property `courseId`
        # @return [String]
        attr_accessor :course_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @course_id = args[:course_id] if args.key?(:course_id)
        end
      end
      
      # Course work material created by a teacher for students of the course
      class CourseWorkMaterial
        include Google::Apis::Core::Hashable
      
        # Absolute link to this course work material in the Classroom web UI. This is
        # only populated if `state` is `PUBLISHED`. Read-only.
        # Corresponds to the JSON property `alternateLink`
        # @return [String]
        attr_accessor :alternate_link
      
        # Assignee mode of the course work material. If unspecified, the default value
        # is `ALL_STUDENTS`.
        # Corresponds to the JSON property `assigneeMode`
        # @return [String]
        attr_accessor :assignee_mode
      
        # Identifier of the course. Read-only.
        # Corresponds to the JSON property `courseId`
        # @return [String]
        attr_accessor :course_id
      
        # Timestamp when this course work material was created. Read-only.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Identifier for the user that created the course work material. Read-only.
        # Corresponds to the JSON property `creatorUserId`
        # @return [String]
        attr_accessor :creator_user_id
      
        # Optional description of this course work material. The text must be a valid
        # UTF-8 string containing no more than 30,000 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Classroom-assigned identifier of this course work material, unique per course.
        # Read-only.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Assignee details about a coursework/announcement. This field is set if and
        # only if `assigneeMode` is `INDIVIDUAL_STUDENTS`.
        # Corresponds to the JSON property `individualStudentsOptions`
        # @return [Google::Apis::ClassroomV1::IndividualStudentsOptions]
        attr_accessor :individual_students_options
      
        # Additional materials. A course work material must have no more than 20
        # material items.
        # Corresponds to the JSON property `materials`
        # @return [Array<Google::Apis::ClassroomV1::Material>]
        attr_accessor :materials
      
        # Optional timestamp when this course work material is scheduled to be published.
        # Corresponds to the JSON property `scheduledTime`
        # @return [String]
        attr_accessor :scheduled_time
      
        # Status of this course work material. If unspecified, the default state is `
        # DRAFT`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Title of this course work material. The title must be a valid UTF-8 string
        # containing between 1 and 3000 characters.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Identifier for the topic that this course work material is associated with.
        # Must match an existing topic in the course.
        # Corresponds to the JSON property `topicId`
        # @return [String]
        attr_accessor :topic_id
      
        # Timestamp of the most recent change to this course work material. Read-only.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_link = args[:alternate_link] if args.key?(:alternate_link)
          @assignee_mode = args[:assignee_mode] if args.key?(:assignee_mode)
          @course_id = args[:course_id] if args.key?(:course_id)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @creator_user_id = args[:creator_user_id] if args.key?(:creator_user_id)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @individual_students_options = args[:individual_students_options] if args.key?(:individual_students_options)
          @materials = args[:materials] if args.key?(:materials)
          @scheduled_time = args[:scheduled_time] if args.key?(:scheduled_time)
          @state = args[:state] if args.key?(:state)
          @title = args[:title] if args.key?(:title)
          @topic_id = args[:topic_id] if args.key?(:topic_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A rubric criterion. Each criterion is a dimension on which performance is
      # rated.
      class Criterion
        include Google::Apis::Core::Hashable
      
        # The description of the criterion.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The criterion ID. On creation, an ID is assigned.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The list of levels within this criterion.
        # Corresponds to the JSON property `levels`
        # @return [Array<Google::Apis::ClassroomV1::Level>]
        attr_accessor :levels
      
        # The title of the criterion.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @levels = args[:levels] if args.key?(:levels)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # Representation of a Google Drive file.
      class DriveFile
        include Google::Apis::Core::Hashable
      
        # URL that can be used to access the Drive item. Read-only.
        # Corresponds to the JSON property `alternateLink`
        # @return [String]
        attr_accessor :alternate_link
      
        # Drive API resource ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # URL of a thumbnail image of the Drive item. Read-only.
        # Corresponds to the JSON property `thumbnailUrl`
        # @return [String]
        attr_accessor :thumbnail_url
      
        # Title of the Drive item. Read-only.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_link = args[:alternate_link] if args.key?(:alternate_link)
          @id = args[:id] if args.key?(:id)
          @thumbnail_url = args[:thumbnail_url] if args.key?(:thumbnail_url)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Representation of a Google Drive folder.
      class DriveFolder
        include Google::Apis::Core::Hashable
      
        # URL that can be used to access the Drive folder. Read-only.
        # Corresponds to the JSON property `alternateLink`
        # @return [String]
        attr_accessor :alternate_link
      
        # Drive API resource ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Title of the Drive folder. Read-only.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_link = args[:alternate_link] if args.key?(:alternate_link)
          @id = args[:id] if args.key?(:id)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # URI to be iframed after being populated with query parameters.
      class EmbedUri
        include Google::Apis::Core::Hashable
      
        # Required. URI to be iframed after being populated with query parameters. This
        # must be a valid UTF-8 string containing between 1 and 1800 characters.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A class of notifications that an application can register to receive. For
      # example: "all roster changes for a domain".
      class Feed
        include Google::Apis::Core::Hashable
      
        # Information about a `Feed` with a `feed_type` of `COURSE_ROSTER_CHANGES`.
        # Corresponds to the JSON property `courseRosterChangesInfo`
        # @return [Google::Apis::ClassroomV1::CourseRosterChangesInfo]
        attr_accessor :course_roster_changes_info
      
        # Information about a `Feed` with a `feed_type` of `COURSE_WORK_CHANGES`.
        # Corresponds to the JSON property `courseWorkChangesInfo`
        # @return [Google::Apis::ClassroomV1::CourseWorkChangesInfo]
        attr_accessor :course_work_changes_info
      
        # The type of feed.
        # Corresponds to the JSON property `feedType`
        # @return [String]
        attr_accessor :feed_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @course_roster_changes_info = args[:course_roster_changes_info] if args.key?(:course_roster_changes_info)
          @course_work_changes_info = args[:course_work_changes_info] if args.key?(:course_work_changes_info)
          @feed_type = args[:feed_type] if args.key?(:feed_type)
        end
      end
      
      # Google Forms item.
      class Form
        include Google::Apis::Core::Hashable
      
        # URL of the form.
        # Corresponds to the JSON property `formUrl`
        # @return [String]
        attr_accessor :form_url
      
        # URL of the form responses document. Only set if responses have been recorded
        # and only when the requesting user is an editor of the form. Read-only.
        # Corresponds to the JSON property `responseUrl`
        # @return [String]
        attr_accessor :response_url
      
        # URL of a thumbnail image of the Form. Read-only.
        # Corresponds to the JSON property `thumbnailUrl`
        # @return [String]
        attr_accessor :thumbnail_url
      
        # Title of the Form. Read-only.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @form_url = args[:form_url] if args.key?(:form_url)
          @response_url = args[:response_url] if args.key?(:response_url)
          @thumbnail_url = args[:thumbnail_url] if args.key?(:thumbnail_url)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Gemini Gem link.
      class GeminiGem
        include Google::Apis::Core::Hashable
      
        # Gems resource id.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Title of the Gem. Read-only.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # URL that can be used to access the Gem. Read-only.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @title = args[:title] if args.key?(:title)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Global user permission description.
      class GlobalPermission
        include Google::Apis::Core::Hashable
      
        # Permission value.
        # Corresponds to the JSON property `permission`
        # @return [String]
        attr_accessor :permission
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permission = args[:permission] if args.key?(:permission)
        end
      end
      
      # Details for a grade category in a course. Coursework may have zero or one
      # grade category, and the category may be used in computing the overall grade.
      # See the [help center article](https://support.google.com/edu/classroom/answer/
      # 9184995) for details.
      class GradeCategory
        include Google::Apis::Core::Hashable
      
        # Default value of denominator. Only applicable when grade calculation type is
        # TOTAL_POINTS.
        # Corresponds to the JSON property `defaultGradeDenominator`
        # @return [Fixnum]
        attr_accessor :default_grade_denominator
      
        # ID of the grade category.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Name of the grade category.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The weight of the category average as part of overall average. A weight of 12.
        # 34% is represented as 123400 (100% is 1,000,000). The last two digits should
        # always be zero since we use two decimal precision. Only applicable when grade
        # calculation type is WEIGHTED_CATEGORIES.
        # Corresponds to the JSON property `weight`
        # @return [Fixnum]
        attr_accessor :weight
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_grade_denominator = args[:default_grade_denominator] if args.key?(:default_grade_denominator)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @weight = args[:weight] if args.key?(:weight)
        end
      end
      
      # The history of each grade on this submission.
      class GradeHistory
        include Google::Apis::Core::Hashable
      
        # The teacher who made the grade change.
        # Corresponds to the JSON property `actorUserId`
        # @return [String]
        attr_accessor :actor_user_id
      
        # The type of grade change at this time in the submission grade history.
        # Corresponds to the JSON property `gradeChangeType`
        # @return [String]
        attr_accessor :grade_change_type
      
        # When the grade of the submission was changed.
        # Corresponds to the JSON property `gradeTimestamp`
        # @return [String]
        attr_accessor :grade_timestamp
      
        # The denominator of the grade at this time in the submission grade history.
        # Corresponds to the JSON property `maxPoints`
        # @return [Float]
        attr_accessor :max_points
      
        # The numerator of the grade at this time in the submission grade history.
        # Corresponds to the JSON property `pointsEarned`
        # @return [Float]
        attr_accessor :points_earned
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actor_user_id = args[:actor_user_id] if args.key?(:actor_user_id)
          @grade_change_type = args[:grade_change_type] if args.key?(:grade_change_type)
          @grade_timestamp = args[:grade_timestamp] if args.key?(:grade_timestamp)
          @max_points = args[:max_points] if args.key?(:max_points)
          @points_earned = args[:points_earned] if args.key?(:points_earned)
        end
      end
      
      # The gradebook settings for a course. See the [help center article](https://
      # support.google.com/edu/classroom/answer/9184995) for details.
      class GradebookSettings
        include Google::Apis::Core::Hashable
      
        # Indicates how the overall grade is calculated.
        # Corresponds to the JSON property `calculationType`
        # @return [String]
        attr_accessor :calculation_type
      
        # Indicates who can see the overall grade..
        # Corresponds to the JSON property `displaySetting`
        # @return [String]
        attr_accessor :display_setting
      
        # Grade categories that are available for coursework in the course.
        # Corresponds to the JSON property `gradeCategories`
        # @return [Array<Google::Apis::ClassroomV1::GradeCategory>]
        attr_accessor :grade_categories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @calculation_type = args[:calculation_type] if args.key?(:calculation_type)
          @display_setting = args[:display_setting] if args.key?(:display_setting)
          @grade_categories = args[:grade_categories] if args.key?(:grade_categories)
        end
      end
      
      # An individual grading period. Grading periods must not have overlapping date
      # ranges and must be listed in chronological order. For example, if the end_date
      # of a grading period is 2024-01-25, then the start_date of the next grading
      # period must be 2024-01-26 or later. Each grading period must have a unique
      # title within a course.
      class GradingPeriod
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::ClassroomV1::Date]
        attr_accessor :end_date
      
        # Output only. System generated grading period ID. Read-only.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::ClassroomV1::Date]
        attr_accessor :start_date
      
        # Required. Title of the grading period. For example, “Semester 1”.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @id = args[:id] if args.key?(:id)
          @start_date = args[:start_date] if args.key?(:start_date)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Grading period settings that include all the individual grading periods in a
      # course.
      class GradingPeriodSettings
        include Google::Apis::Core::Hashable
      
        # Supports toggling the application of grading periods on existing stream items.
        # Once set, this value is persisted meaning that it does not need to be set in
        # every request to update `GradingPeriodSettings`. If not previously set, the
        # default is False.
        # Corresponds to the JSON property `applyToExistingCoursework`
        # @return [Boolean]
        attr_accessor :apply_to_existing_coursework
        alias_method :apply_to_existing_coursework?, :apply_to_existing_coursework
      
        # The list of grading periods in a specific course. Grading periods must not
        # have overlapping date ranges and must be listed in chronological order. Each
        # grading period must have a unique title within a course.
        # Corresponds to the JSON property `gradingPeriods`
        # @return [Array<Google::Apis::ClassroomV1::GradingPeriod>]
        attr_accessor :grading_periods
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apply_to_existing_coursework = args[:apply_to_existing_coursework] if args.key?(:apply_to_existing_coursework)
          @grading_periods = args[:grading_periods] if args.key?(:grading_periods)
        end
      end
      
      # Association between a student and a guardian of that student. The guardian may
      # receive information about the student's course work.
      class Guardian
        include Google::Apis::Core::Hashable
      
        # Identifier for the guardian.
        # Corresponds to the JSON property `guardianId`
        # @return [String]
        attr_accessor :guardian_id
      
        # Global information for a user.
        # Corresponds to the JSON property `guardianProfile`
        # @return [Google::Apis::ClassroomV1::UserProfile]
        attr_accessor :guardian_profile
      
        # The email address to which the initial guardian invitation was sent. This
        # field is only visible to domain administrators.
        # Corresponds to the JSON property `invitedEmailAddress`
        # @return [String]
        attr_accessor :invited_email_address
      
        # Identifier for the student to whom the guardian relationship applies.
        # Corresponds to the JSON property `studentId`
        # @return [String]
        attr_accessor :student_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @guardian_id = args[:guardian_id] if args.key?(:guardian_id)
          @guardian_profile = args[:guardian_profile] if args.key?(:guardian_profile)
          @invited_email_address = args[:invited_email_address] if args.key?(:invited_email_address)
          @student_id = args[:student_id] if args.key?(:student_id)
        end
      end
      
      # An invitation to become the guardian of a specified user, sent to a specified
      # email address.
      class GuardianInvitation
        include Google::Apis::Core::Hashable
      
        # The time that this invitation was created. Read-only.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Unique identifier for this invitation. Read-only.
        # Corresponds to the JSON property `invitationId`
        # @return [String]
        attr_accessor :invitation_id
      
        # Email address that the invitation was sent to. This field is only visible to
        # domain administrators.
        # Corresponds to the JSON property `invitedEmailAddress`
        # @return [String]
        attr_accessor :invited_email_address
      
        # The state that this invitation is in.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # ID of the student (in standard format)
        # Corresponds to the JSON property `studentId`
        # @return [String]
        attr_accessor :student_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @invitation_id = args[:invitation_id] if args.key?(:invitation_id)
          @invited_email_address = args[:invited_email_address] if args.key?(:invited_email_address)
          @state = args[:state] if args.key?(:state)
          @student_id = args[:student_id] if args.key?(:student_id)
        end
      end
      
      # Assignee details about a coursework/announcement. This field is set if and
      # only if `assigneeMode` is `INDIVIDUAL_STUDENTS`.
      class IndividualStudentsOptions
        include Google::Apis::Core::Hashable
      
        # Identifiers for the students that have access to the coursework/announcement.
        # Corresponds to the JSON property `studentIds`
        # @return [Array<String>]
        attr_accessor :student_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @student_ids = args[:student_ids] if args.key?(:student_ids)
        end
      end
      
      # An invitation to join a course.
      class Invitation
        include Google::Apis::Core::Hashable
      
        # Identifier of the course to invite the user to.
        # Corresponds to the JSON property `courseId`
        # @return [String]
        attr_accessor :course_id
      
        # Identifier assigned by Classroom. Read-only.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Role to invite the user to have. Must not be `COURSE_ROLE_UNSPECIFIED`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Identifier of the invited user. When specified as a parameter of a request,
        # this identifier can be set to one of the following: * the numeric identifier
        # for the user * the email address of the user * the string literal `"me"`,
        # indicating the requesting user
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @course_id = args[:course_id] if args.key?(:course_id)
          @id = args[:id] if args.key?(:id)
          @role = args[:role] if args.key?(:role)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # A level of the criterion.
      class Level
        include Google::Apis::Core::Hashable
      
        # The description of the level.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The level ID. On creation, an ID is assigned.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional points associated with this level. If set, all levels within the
        # rubric must specify points and the value must be distinct across all levels
        # within a single criterion. 0 is distinct from no points.
        # Corresponds to the JSON property `points`
        # @return [Float]
        attr_accessor :points
      
        # The title of the level. If the level has no points set, title must be set.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @points = args[:points] if args.key?(:points)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # URL item.
      class Link
        include Google::Apis::Core::Hashable
      
        # URL of a thumbnail image of the target URL. Read-only.
        # Corresponds to the JSON property `thumbnailUrl`
        # @return [String]
        attr_accessor :thumbnail_url
      
        # Title of the target of the URL. Read-only.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # URL to link to. This must be a valid UTF-8 string containing between 1 and
        # 2024 characters.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @thumbnail_url = args[:thumbnail_url] if args.key?(:thumbnail_url)
          @title = args[:title] if args.key?(:title)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Response when listing add-on attachments.
      class ListAddOnAttachmentsResponse
        include Google::Apis::Core::Hashable
      
        # Attachments under the given post.
        # Corresponds to the JSON property `addOnAttachments`
        # @return [Array<Google::Apis::ClassroomV1::AddOnAttachment>]
        attr_accessor :add_on_attachments
      
        # A token, which can be sent as `pageToken` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add_on_attachments = args[:add_on_attachments] if args.key?(:add_on_attachments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response when listing course work.
      class ListAnnouncementsResponse
        include Google::Apis::Core::Hashable
      
        # Announcement items that match the request.
        # Corresponds to the JSON property `announcements`
        # @return [Array<Google::Apis::ClassroomV1::Announcement>]
        attr_accessor :announcements
      
        # Token identifying the next page of results to return. If empty, no further
        # results are available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @announcements = args[:announcements] if args.key?(:announcements)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response when listing course aliases.
      class ListCourseAliasesResponse
        include Google::Apis::Core::Hashable
      
        # The course aliases.
        # Corresponds to the JSON property `aliases`
        # @return [Array<Google::Apis::ClassroomV1::CourseAlias>]
        attr_accessor :aliases
      
        # Token identifying the next page of results to return. If empty, no further
        # results are available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aliases = args[:aliases] if args.key?(:aliases)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response when listing course work material.
      class ListCourseWorkMaterialResponse
        include Google::Apis::Core::Hashable
      
        # Course work material items that match the request.
        # Corresponds to the JSON property `courseWorkMaterial`
        # @return [Array<Google::Apis::ClassroomV1::CourseWorkMaterial>]
        attr_accessor :course_work_material
      
        # Token identifying the next page of results to return. If empty, no further
        # results are available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @course_work_material = args[:course_work_material] if args.key?(:course_work_material)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response when listing course work.
      class ListCourseWorkResponse
        include Google::Apis::Core::Hashable
      
        # Course work items that match the request.
        # Corresponds to the JSON property `courseWork`
        # @return [Array<Google::Apis::ClassroomV1::CourseWork>]
        attr_accessor :course_work
      
        # Token identifying the next page of results to return. If empty, no further
        # results are available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @course_work = args[:course_work] if args.key?(:course_work)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response when listing courses.
      class ListCoursesResponse
        include Google::Apis::Core::Hashable
      
        # Courses that match the list request.
        # Corresponds to the JSON property `courses`
        # @return [Array<Google::Apis::ClassroomV1::Course>]
        attr_accessor :courses
      
        # Token identifying the next page of results to return. If empty, no further
        # results are available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @courses = args[:courses] if args.key?(:courses)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response when listing guardian invitations.
      class ListGuardianInvitationsResponse
        include Google::Apis::Core::Hashable
      
        # Guardian invitations that matched the list request.
        # Corresponds to the JSON property `guardianInvitations`
        # @return [Array<Google::Apis::ClassroomV1::GuardianInvitation>]
        attr_accessor :guardian_invitations
      
        # Token identifying the next page of results to return. If empty, no further
        # results are available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @guardian_invitations = args[:guardian_invitations] if args.key?(:guardian_invitations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response when listing guardians.
      class ListGuardiansResponse
        include Google::Apis::Core::Hashable
      
        # Guardians on this page of results that met the criteria specified in the
        # request.
        # Corresponds to the JSON property `guardians`
        # @return [Array<Google::Apis::ClassroomV1::Guardian>]
        attr_accessor :guardians
      
        # Token identifying the next page of results to return. If empty, no further
        # results are available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @guardians = args[:guardians] if args.key?(:guardians)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response when listing invitations.
      class ListInvitationsResponse
        include Google::Apis::Core::Hashable
      
        # Invitations that match the list request.
        # Corresponds to the JSON property `invitations`
        # @return [Array<Google::Apis::ClassroomV1::Invitation>]
        attr_accessor :invitations
      
        # Token identifying the next page of results to return. If empty, no further
        # results are available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @invitations = args[:invitations] if args.key?(:invitations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response when listing rubrics.
      class ListRubricsResponse
        include Google::Apis::Core::Hashable
      
        # Token identifying the next page of results to return. If empty, no further
        # results are available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Rubrics that match the request.
        # Corresponds to the JSON property `rubrics`
        # @return [Array<Google::Apis::ClassroomV1::Rubric>]
        attr_accessor :rubrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rubrics = args[:rubrics] if args.key?(:rubrics)
        end
      end
      
      # Response when listing student submissions.
      class ListStudentSubmissionsResponse
        include Google::Apis::Core::Hashable
      
        # Token identifying the next page of results to return. If empty, no further
        # results are available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Student work that matches the request.
        # Corresponds to the JSON property `studentSubmissions`
        # @return [Array<Google::Apis::ClassroomV1::StudentSubmission>]
        attr_accessor :student_submissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @student_submissions = args[:student_submissions] if args.key?(:student_submissions)
        end
      end
      
      # Response when listing students.
      class ListStudentsResponse
        include Google::Apis::Core::Hashable
      
        # Token identifying the next page of results to return. If empty, no further
        # results are available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Students who match the list request.
        # Corresponds to the JSON property `students`
        # @return [Array<Google::Apis::ClassroomV1::Student>]
        attr_accessor :students
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @students = args[:students] if args.key?(:students)
        end
      end
      
      # Response when listing teachers.
      class ListTeachersResponse
        include Google::Apis::Core::Hashable
      
        # Token identifying the next page of results to return. If empty, no further
        # results are available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Teachers who match the list request.
        # Corresponds to the JSON property `teachers`
        # @return [Array<Google::Apis::ClassroomV1::Teacher>]
        attr_accessor :teachers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @teachers = args[:teachers] if args.key?(:teachers)
        end
      end
      
      # Response when listing topics.
      class ListTopicResponse
        include Google::Apis::Core::Hashable
      
        # Token identifying the next page of results to return. If empty, no further
        # results are available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Topic items that match the request.
        # Corresponds to the JSON property `topic`
        # @return [Array<Google::Apis::ClassroomV1::Topic>]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # Material attached to course work. When creating attachments, setting the `form`
      # , `gem`, or `notebook` field is not supported.
      class Material
        include Google::Apis::Core::Hashable
      
        # Drive file that is used as material for course work.
        # Corresponds to the JSON property `driveFile`
        # @return [Google::Apis::ClassroomV1::SharedDriveFile]
        attr_accessor :drive_file
      
        # Google Forms item.
        # Corresponds to the JSON property `form`
        # @return [Google::Apis::ClassroomV1::Form]
        attr_accessor :form
      
        # Gemini Gem link.
        # Corresponds to the JSON property `gem`
        # @return [Google::Apis::ClassroomV1::GeminiGem]
        attr_accessor :gem_prop
      
        # URL item.
        # Corresponds to the JSON property `link`
        # @return [Google::Apis::ClassroomV1::Link]
        attr_accessor :link
      
        # NotebookLM Notebook link.
        # Corresponds to the JSON property `notebook`
        # @return [Google::Apis::ClassroomV1::NotebookLmNotebook]
        attr_accessor :notebook
      
        # YouTube video item.
        # Corresponds to the JSON property `youtubeVideo`
        # @return [Google::Apis::ClassroomV1::YouTubeVideo]
        attr_accessor :youtube_video
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drive_file = args[:drive_file] if args.key?(:drive_file)
          @form = args[:form] if args.key?(:form)
          @gem_prop = args[:gem_prop] if args.key?(:gem_prop)
          @link = args[:link] if args.key?(:link)
          @notebook = args[:notebook] if args.key?(:notebook)
          @youtube_video = args[:youtube_video] if args.key?(:youtube_video)
        end
      end
      
      # Request to modify assignee mode and options of an announcement.
      class ModifyAnnouncementAssigneesRequest
        include Google::Apis::Core::Hashable
      
        # Mode of the announcement describing whether it is accessible by all students
        # or specified individual students.
        # Corresponds to the JSON property `assigneeMode`
        # @return [String]
        attr_accessor :assignee_mode
      
        # Contains fields to add or remove students from a course work or announcement
        # where the `assigneeMode` is set to `INDIVIDUAL_STUDENTS`.
        # Corresponds to the JSON property `modifyIndividualStudentsOptions`
        # @return [Google::Apis::ClassroomV1::ModifyIndividualStudentsOptions]
        attr_accessor :modify_individual_students_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignee_mode = args[:assignee_mode] if args.key?(:assignee_mode)
          @modify_individual_students_options = args[:modify_individual_students_options] if args.key?(:modify_individual_students_options)
        end
      end
      
      # Request to modify the attachments of a student submission.
      class ModifyAttachmentsRequest
        include Google::Apis::Core::Hashable
      
        # Attachments to add. A student submission may not have more than 20 attachments.
        # Form attachments are not supported.
        # Corresponds to the JSON property `addAttachments`
        # @return [Array<Google::Apis::ClassroomV1::Attachment>]
        attr_accessor :add_attachments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add_attachments = args[:add_attachments] if args.key?(:add_attachments)
        end
      end
      
      # Request to modify assignee mode and options of a coursework.
      class ModifyCourseWorkAssigneesRequest
        include Google::Apis::Core::Hashable
      
        # Mode of the coursework describing whether it will be assigned to all students
        # or specified individual students.
        # Corresponds to the JSON property `assigneeMode`
        # @return [String]
        attr_accessor :assignee_mode
      
        # Contains fields to add or remove students from a course work or announcement
        # where the `assigneeMode` is set to `INDIVIDUAL_STUDENTS`.
        # Corresponds to the JSON property `modifyIndividualStudentsOptions`
        # @return [Google::Apis::ClassroomV1::ModifyIndividualStudentsOptions]
        attr_accessor :modify_individual_students_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignee_mode = args[:assignee_mode] if args.key?(:assignee_mode)
          @modify_individual_students_options = args[:modify_individual_students_options] if args.key?(:modify_individual_students_options)
        end
      end
      
      # Contains fields to add or remove students from a course work or announcement
      # where the `assigneeMode` is set to `INDIVIDUAL_STUDENTS`.
      class ModifyIndividualStudentsOptions
        include Google::Apis::Core::Hashable
      
        # IDs of students to be added as having access to this coursework/announcement.
        # Corresponds to the JSON property `addStudentIds`
        # @return [Array<String>]
        attr_accessor :add_student_ids
      
        # IDs of students to be removed from having access to this coursework/
        # announcement.
        # Corresponds to the JSON property `removeStudentIds`
        # @return [Array<String>]
        attr_accessor :remove_student_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add_student_ids = args[:add_student_ids] if args.key?(:add_student_ids)
          @remove_student_ids = args[:remove_student_ids] if args.key?(:remove_student_ids)
        end
      end
      
      # Additional details for multiple-choice questions.
      class MultipleChoiceQuestion
        include Google::Apis::Core::Hashable
      
        # Possible choices.
        # Corresponds to the JSON property `choices`
        # @return [Array<String>]
        attr_accessor :choices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @choices = args[:choices] if args.key?(:choices)
        end
      end
      
      # Student work for a multiple-choice question.
      class MultipleChoiceSubmission
        include Google::Apis::Core::Hashable
      
        # Student's select choice.
        # Corresponds to the JSON property `answer`
        # @return [String]
        attr_accessor :answer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer = args[:answer] if args.key?(:answer)
        end
      end
      
      # Details of the user's name.
      class Name
        include Google::Apis::Core::Hashable
      
        # The user's last name. Read-only.
        # Corresponds to the JSON property `familyName`
        # @return [String]
        attr_accessor :family_name
      
        # The user's full name formed by concatenating the first and last name values.
        # Read-only.
        # Corresponds to the JSON property `fullName`
        # @return [String]
        attr_accessor :full_name
      
        # The user's first name. Read-only.
        # Corresponds to the JSON property `givenName`
        # @return [String]
        attr_accessor :given_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @family_name = args[:family_name] if args.key?(:family_name)
          @full_name = args[:full_name] if args.key?(:full_name)
          @given_name = args[:given_name] if args.key?(:given_name)
        end
      end
      
      # NotebookLM Notebook link.
      class NotebookLmNotebook
        include Google::Apis::Core::Hashable
      
        # Notebook resource id.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Title of the Notebook. Read-only.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # URL that can be used to access the Notebook. Read-only.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @title = args[:title] if args.key?(:title)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Request to reclaim a student submission.
      class ReclaimStudentSubmissionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An instruction to Classroom to send notifications from the `feed` to the
      # provided destination.
      class Registration
        include Google::Apis::Core::Hashable
      
        # A reference to a Cloud Pub/Sub topic. To register for notifications, the owner
        # of the topic must grant `classroom-notifications@system.gserviceaccount.com`
        # the `projects.topics.publish` permission.
        # Corresponds to the JSON property `cloudPubsubTopic`
        # @return [Google::Apis::ClassroomV1::CloudPubsubTopic]
        attr_accessor :cloud_pubsub_topic
      
        # The time until which the `Registration` is effective. This is a read-only
        # field assigned by the server.
        # Corresponds to the JSON property `expiryTime`
        # @return [String]
        attr_accessor :expiry_time
      
        # A class of notifications that an application can register to receive. For
        # example: "all roster changes for a domain".
        # Corresponds to the JSON property `feed`
        # @return [Google::Apis::ClassroomV1::Feed]
        attr_accessor :feed
      
        # A server-generated unique identifier for this `Registration`. Read-only.
        # Corresponds to the JSON property `registrationId`
        # @return [String]
        attr_accessor :registration_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_pubsub_topic = args[:cloud_pubsub_topic] if args.key?(:cloud_pubsub_topic)
          @expiry_time = args[:expiry_time] if args.key?(:expiry_time)
          @feed = args[:feed] if args.key?(:feed)
          @registration_id = args[:registration_id] if args.key?(:registration_id)
        end
      end
      
      # Request to return a student submission.
      class ReturnStudentSubmissionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The rubric of the course work. A rubric is a scoring guide used to evaluate
      # student work and give feedback. For further details, see [Rubrics structure
      # and known limitations](/classroom/rubrics/limitations).
      class Rubric
        include Google::Apis::Core::Hashable
      
        # Identifier of the course. Read-only.
        # Corresponds to the JSON property `courseId`
        # @return [String]
        attr_accessor :course_id
      
        # Identifier for the course work this corresponds to. Read-only.
        # Corresponds to the JSON property `courseWorkId`
        # @return [String]
        attr_accessor :course_work_id
      
        # Output only. Timestamp when this rubric was created. Read-only.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # List of criteria. Each criterion is a dimension on which performance is rated.
        # Corresponds to the JSON property `criteria`
        # @return [Array<Google::Apis::ClassroomV1::Criterion>]
        attr_accessor :criteria
      
        # Classroom-assigned identifier for the rubric. This is unique among rubrics for
        # the relevant course work. Read-only.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Input only. Immutable. Google Sheets ID of the spreadsheet. This spreadsheet
        # must contain formatted rubric settings. See [Create or reuse a rubric for an
        # assignment](https://support.google.com/edu/classroom/answer/9335069). Use of
        # this field requires the `https://www.googleapis.com/auth/spreadsheets.readonly`
        # or `https://www.googleapis.com/auth/spreadsheets` scope.
        # Corresponds to the JSON property `sourceSpreadsheetId`
        # @return [String]
        attr_accessor :source_spreadsheet_id
      
        # Output only. Timestamp of the most recent change to this rubric. Read-only.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @course_id = args[:course_id] if args.key?(:course_id)
          @course_work_id = args[:course_work_id] if args.key?(:course_work_id)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @criteria = args[:criteria] if args.key?(:criteria)
          @id = args[:id] if args.key?(:id)
          @source_spreadsheet_id = args[:source_spreadsheet_id] if args.key?(:source_spreadsheet_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A rubric grade set for the student submission. There is at most one entry per
      # rubric criterion.
      class RubricGrade
        include Google::Apis::Core::Hashable
      
        # Optional. Criterion ID.
        # Corresponds to the JSON property `criterionId`
        # @return [String]
        attr_accessor :criterion_id
      
        # Optional. Optional level ID of the selected level. If empty, no level was
        # selected.
        # Corresponds to the JSON property `levelId`
        # @return [String]
        attr_accessor :level_id
      
        # Optional. Optional points assigned for this criterion, typically based on the
        # level. Levels might or might not have points. If unset, no points were set for
        # this criterion.
        # Corresponds to the JSON property `points`
        # @return [Float]
        attr_accessor :points
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @criterion_id = args[:criterion_id] if args.key?(:criterion_id)
          @level_id = args[:level_id] if args.key?(:level_id)
          @points = args[:points] if args.key?(:points)
        end
      end
      
      # Drive file that is used as material for course work.
      class SharedDriveFile
        include Google::Apis::Core::Hashable
      
        # Representation of a Google Drive file.
        # Corresponds to the JSON property `driveFile`
        # @return [Google::Apis::ClassroomV1::DriveFile]
        attr_accessor :drive_file
      
        # Mechanism by which students access the Drive item.
        # Corresponds to the JSON property `shareMode`
        # @return [String]
        attr_accessor :share_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drive_file = args[:drive_file] if args.key?(:drive_file)
          @share_mode = args[:share_mode] if args.key?(:share_mode)
        end
      end
      
      # Student work for a short answer question.
      class ShortAnswerSubmission
        include Google::Apis::Core::Hashable
      
        # Student response to a short-answer question.
        # Corresponds to the JSON property `answer`
        # @return [String]
        attr_accessor :answer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer = args[:answer] if args.key?(:answer)
        end
      end
      
      # The history of each state this submission has been in.
      class StateHistory
        include Google::Apis::Core::Hashable
      
        # The teacher or student who made the change.
        # Corresponds to the JSON property `actorUserId`
        # @return [String]
        attr_accessor :actor_user_id
      
        # The workflow pipeline stage.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # When the submission entered this state.
        # Corresponds to the JSON property `stateTimestamp`
        # @return [String]
        attr_accessor :state_timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actor_user_id = args[:actor_user_id] if args.key?(:actor_user_id)
          @state = args[:state] if args.key?(:state)
          @state_timestamp = args[:state_timestamp] if args.key?(:state_timestamp)
        end
      end
      
      # Student in a course.
      class Student
        include Google::Apis::Core::Hashable
      
        # Identifier of the course. Read-only.
        # Corresponds to the JSON property `courseId`
        # @return [String]
        attr_accessor :course_id
      
        # Global information for a user.
        # Corresponds to the JSON property `profile`
        # @return [Google::Apis::ClassroomV1::UserProfile]
        attr_accessor :profile
      
        # Representation of a Google Drive folder.
        # Corresponds to the JSON property `studentWorkFolder`
        # @return [Google::Apis::ClassroomV1::DriveFolder]
        attr_accessor :student_work_folder
      
        # Identifier of the user. When specified as a parameter of a request, this
        # identifier can be one of the following: * the numeric identifier for the user *
        # the email address of the user * the string literal `"me"`, indicating the
        # requesting user
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @course_id = args[:course_id] if args.key?(:course_id)
          @profile = args[:profile] if args.key?(:profile)
          @student_work_folder = args[:student_work_folder] if args.key?(:student_work_folder)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # Role-specific context if the requesting user is a student.
      class StudentContext
        include Google::Apis::Core::Hashable
      
        # Requesting user's submission id to be used for grade passback and to identify
        # the student when showing student work to the teacher. This is set exactly when
        # `supportsStudentWork` is `true`.
        # Corresponds to the JSON property `submissionId`
        # @return [String]
        attr_accessor :submission_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @submission_id = args[:submission_id] if args.key?(:submission_id)
        end
      end
      
      # Student submission for course work. `StudentSubmission` items are generated
      # when a `CourseWork` item is created. Student submissions that have never been
      # accessed (i.e. with `state` = NEW) may not have a creation time or update time.
      class StudentSubmission
        include Google::Apis::Core::Hashable
      
        # Absolute link to the submission in the Classroom web UI. Read-only.
        # Corresponds to the JSON property `alternateLink`
        # @return [String]
        attr_accessor :alternate_link
      
        # Optional grade. If unset, no grade was set. This value must be non-negative.
        # Decimal (that is, non-integer) values are allowed, but are rounded to two
        # decimal places. This may be modified only by course teachers.
        # Corresponds to the JSON property `assignedGrade`
        # @return [Float]
        attr_accessor :assigned_grade
      
        # Assigned rubric grades based on the rubric's Criteria. This map is empty if
        # there is no rubric attached to this course work or if a rubric is attached,
        # but no grades have been set on any Criteria. Entries are only populated for
        # grades that have been set. Key: The rubric's criterion ID. Read-only.
        # Corresponds to the JSON property `assignedRubricGrades`
        # @return [Hash<String,Google::Apis::ClassroomV1::RubricGrade>]
        attr_accessor :assigned_rubric_grades
      
        # Student work for an assignment.
        # Corresponds to the JSON property `assignmentSubmission`
        # @return [Google::Apis::ClassroomV1::AssignmentSubmission]
        attr_accessor :assignment_submission
      
        # Whether this student submission is associated with the Developer Console
        # project making the request. See CreateCourseWork for more details. Read-only.
        # Corresponds to the JSON property `associatedWithDeveloper`
        # @return [Boolean]
        attr_accessor :associated_with_developer
        alias_method :associated_with_developer?, :associated_with_developer
      
        # Identifier of the course. Read-only.
        # Corresponds to the JSON property `courseId`
        # @return [String]
        attr_accessor :course_id
      
        # Identifier for the course work this corresponds to. Read-only.
        # Corresponds to the JSON property `courseWorkId`
        # @return [String]
        attr_accessor :course_work_id
      
        # Type of course work this submission is for. Read-only.
        # Corresponds to the JSON property `courseWorkType`
        # @return [String]
        attr_accessor :course_work_type
      
        # Creation time of this submission. This may be unset if the student has not
        # accessed this item. Read-only.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Optional pending grade. If unset, no grade was set. This value must be non-
        # negative. Decimal (that is, non-integer) values are allowed, but are rounded
        # to two decimal places. This is only visible to and modifiable by course
        # teachers.
        # Corresponds to the JSON property `draftGrade`
        # @return [Float]
        attr_accessor :draft_grade
      
        # Pending rubric grades based on the rubric's criteria. This map is empty if
        # there is no rubric attached to this course work or if a rubric is attached,
        # but no grades have been set on any criteria. Entries are only populated for
        # grades that have been set. Key: The rubric's criterion ID. Read-only.
        # Corresponds to the JSON property `draftRubricGrades`
        # @return [Hash<String,Google::Apis::ClassroomV1::RubricGrade>]
        attr_accessor :draft_rubric_grades
      
        # Classroom-assigned Identifier for the student submission. This is unique among
        # submissions for the relevant course work. Read-only.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Whether this submission is late. Read-only.
        # Corresponds to the JSON property `late`
        # @return [Boolean]
        attr_accessor :late
        alias_method :late?, :late
      
        # Student work for a multiple-choice question.
        # Corresponds to the JSON property `multipleChoiceSubmission`
        # @return [Google::Apis::ClassroomV1::MultipleChoiceSubmission]
        attr_accessor :multiple_choice_submission
      
        # Student work for a short answer question.
        # Corresponds to the JSON property `shortAnswerSubmission`
        # @return [Google::Apis::ClassroomV1::ShortAnswerSubmission]
        attr_accessor :short_answer_submission
      
        # State of this submission. Read-only.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The history of the submission (includes state and grade histories). Read-only.
        # Corresponds to the JSON property `submissionHistory`
        # @return [Array<Google::Apis::ClassroomV1::SubmissionHistory>]
        attr_accessor :submission_history
      
        # Last update time of this submission. This may be unset if the student has not
        # accessed this item. Read-only.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Identifier for the student that owns this submission. Read-only.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_link = args[:alternate_link] if args.key?(:alternate_link)
          @assigned_grade = args[:assigned_grade] if args.key?(:assigned_grade)
          @assigned_rubric_grades = args[:assigned_rubric_grades] if args.key?(:assigned_rubric_grades)
          @assignment_submission = args[:assignment_submission] if args.key?(:assignment_submission)
          @associated_with_developer = args[:associated_with_developer] if args.key?(:associated_with_developer)
          @course_id = args[:course_id] if args.key?(:course_id)
          @course_work_id = args[:course_work_id] if args.key?(:course_work_id)
          @course_work_type = args[:course_work_type] if args.key?(:course_work_type)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @draft_grade = args[:draft_grade] if args.key?(:draft_grade)
          @draft_rubric_grades = args[:draft_rubric_grades] if args.key?(:draft_rubric_grades)
          @id = args[:id] if args.key?(:id)
          @late = args[:late] if args.key?(:late)
          @multiple_choice_submission = args[:multiple_choice_submission] if args.key?(:multiple_choice_submission)
          @short_answer_submission = args[:short_answer_submission] if args.key?(:short_answer_submission)
          @state = args[:state] if args.key?(:state)
          @submission_history = args[:submission_history] if args.key?(:submission_history)
          @update_time = args[:update_time] if args.key?(:update_time)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # The history of the submission. This currently includes state and grade
      # histories.
      class SubmissionHistory
        include Google::Apis::Core::Hashable
      
        # The history of each grade on this submission.
        # Corresponds to the JSON property `gradeHistory`
        # @return [Google::Apis::ClassroomV1::GradeHistory]
        attr_accessor :grade_history
      
        # The history of each state this submission has been in.
        # Corresponds to the JSON property `stateHistory`
        # @return [Google::Apis::ClassroomV1::StateHistory]
        attr_accessor :state_history
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @grade_history = args[:grade_history] if args.key?(:grade_history)
          @state_history = args[:state_history] if args.key?(:state_history)
        end
      end
      
      # Teacher of a course.
      class Teacher
        include Google::Apis::Core::Hashable
      
        # Identifier of the course. Read-only.
        # Corresponds to the JSON property `courseId`
        # @return [String]
        attr_accessor :course_id
      
        # Global information for a user.
        # Corresponds to the JSON property `profile`
        # @return [Google::Apis::ClassroomV1::UserProfile]
        attr_accessor :profile
      
        # Identifier of the user. When specified as a parameter of a request, this
        # identifier can be one of the following: * the numeric identifier for the user *
        # the email address of the user * the string literal `"me"`, indicating the
        # requesting user
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @course_id = args[:course_id] if args.key?(:course_id)
          @profile = args[:profile] if args.key?(:profile)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # Role-specific context if the requesting user is a teacher.
      class TeacherContext
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class TimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of a day in 24 hour format. Must be greater than or equal to 0 and
        # typically must be less than or equal to 23. An API may choose to allow the
        # value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of an hour. Must be greater than or equal to 0 and less than or equal
        # to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and
        # less than or equal to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of a minute. Must be greater than or equal to 0 and typically must be
        # less than or equal to 59. An API may allow the value 60 if it allows leap-
        # seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
      
      # Topic created by a teacher for the course
      class Topic
        include Google::Apis::Core::Hashable
      
        # Identifier of the course. Read-only.
        # Corresponds to the JSON property `courseId`
        # @return [String]
        attr_accessor :course_id
      
        # The name of the topic, generated by the user. Leading and trailing whitespaces,
        # if any, are trimmed. Also, multiple consecutive whitespaces are collapsed
        # into one inside the name. The result must be a non-empty string. Topic names
        # are case sensitive, and must be no longer than 100 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Unique identifier for the topic. Read-only.
        # Corresponds to the JSON property `topicId`
        # @return [String]
        attr_accessor :topic_id
      
        # The time the topic was last updated by the system. Read-only.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @course_id = args[:course_id] if args.key?(:course_id)
          @name = args[:name] if args.key?(:name)
          @topic_id = args[:topic_id] if args.key?(:topic_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request to turn in a student submission.
      class TurnInStudentSubmissionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Global information for a user.
      class UserProfile
        include Google::Apis::Core::Hashable
      
        # Email address of the user. Must request `https://www.googleapis.com/auth/
        # classroom.profile.emails` scope for this field to be populated in a response
        # body. Read-only.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # Identifier of the user. Read-only.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Details of the user's name.
        # Corresponds to the JSON property `name`
        # @return [Google::Apis::ClassroomV1::Name]
        attr_accessor :name
      
        # Global permissions of the user. Read-only.
        # Corresponds to the JSON property `permissions`
        # @return [Array<Google::Apis::ClassroomV1::GlobalPermission>]
        attr_accessor :permissions
      
        # URL of user's profile photo. Must request `https://www.googleapis.com/auth/
        # classroom.profile.photos` scope for this field to be populated in a response
        # body. Read-only.
        # Corresponds to the JSON property `photoUrl`
        # @return [String]
        attr_accessor :photo_url
      
        # Represents whether a Google Workspace for Education user's domain
        # administrator has explicitly verified them as being a teacher. This field is
        # always false if the user is not a member of a Google Workspace for Education
        # domain. Read-only
        # Corresponds to the JSON property `verifiedTeacher`
        # @return [Boolean]
        attr_accessor :verified_teacher
        alias_method :verified_teacher?, :verified_teacher
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email_address = args[:email_address] if args.key?(:email_address)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @permissions = args[:permissions] if args.key?(:permissions)
          @photo_url = args[:photo_url] if args.key?(:photo_url)
          @verified_teacher = args[:verified_teacher] if args.key?(:verified_teacher)
        end
      end
      
      # YouTube video item.
      class YouTubeVideo
        include Google::Apis::Core::Hashable
      
        # URL that can be used to view the YouTube video. Read-only.
        # Corresponds to the JSON property `alternateLink`
        # @return [String]
        attr_accessor :alternate_link
      
        # YouTube API resource ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # URL of a thumbnail image of the YouTube video. Read-only.
        # Corresponds to the JSON property `thumbnailUrl`
        # @return [String]
        attr_accessor :thumbnail_url
      
        # Title of the YouTube video. Read-only.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_link = args[:alternate_link] if args.key?(:alternate_link)
          @id = args[:id] if args.key?(:id)
          @thumbnail_url = args[:thumbnail_url] if args.key?(:thumbnail_url)
          @title = args[:title] if args.key?(:title)
        end
      end
    end
  end
end
